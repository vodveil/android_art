    /*
     * Unconditional branch, 8-bit offset.
     *
     * The branch distance is a signed code-unit offset, which we need to
     * double to get a byte offset.
     */
    /* goto +AA */
    sbfx    wINST, wINST, #8, #8           // wINST<- ssssssAA (sign-extended)
    b       MterpCommonTakenBranchNoFlags
