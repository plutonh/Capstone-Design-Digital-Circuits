PIC_LD=ld

ARCHIVE_OBJS=
ARCHIVE_OBJS += _13092_archive_1.so
_13092_archive_1.so : archive.0/_13092_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -m elf_i386 -shared  -o .//../simv.daidir//_13092_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_13092_archive_1.so $@






%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<
CU_UDP_OBJS = \


CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \
objs/amcQw_d.o 

CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

