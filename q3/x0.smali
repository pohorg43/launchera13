.class public abstract Lq3/x0;
.super Lq3/v0;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq3/v0;-><init>()V

    return-void
.end method


# virtual methods
.method public A(JLq3/w0$c;)V
    .registers 4

    sget-object p0, Lq3/i0;->g:Lq3/i0;

    invoke-virtual {p0, p1, p2, p3}, Lq3/w0;->F(JLq3/w0$c;)V

    return-void
.end method

.method public abstract z()Ljava/lang/Thread;
.end method
