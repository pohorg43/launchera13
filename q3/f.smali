.class public final Lq3/f;
.super Lq3/w0;
.source ""


# instance fields
.field public final g:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .registers 2

    invoke-direct {p0}, Lq3/w0;-><init>()V

    iput-object p1, p0, Lq3/f;->g:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public z()Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lq3/f;->g:Ljava/lang/Thread;

    return-object p0
.end method
