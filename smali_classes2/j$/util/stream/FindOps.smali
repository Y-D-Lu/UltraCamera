.class abstract Lj$/util/stream/FindOps;
.super Ljava/lang/Object;


# direct methods
.method public static makeRef(Z)Lj$/util/stream/TerminalOp;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lj$/util/stream/FindOps$FindSink$OfRef;->OP_FIND_FIRST:Lj$/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object p0, Lj$/util/stream/FindOps$FindSink$OfRef;->OP_FIND_ANY:Lj$/util/stream/TerminalOp;

    :goto_0
    return-object p0
.end method
