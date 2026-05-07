.class Landroidx/transition/WindowIdApi14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/transition/WindowIdImpl;


# instance fields
.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Landroidx/transition/WindowIdApi14;

    if-eqz v0, :cond_12

    check-cast p1, Landroidx/transition/WindowIdApi14;

    iget-object p1, p1, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Landroidx/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
