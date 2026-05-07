.class public final Lcom/android/common/debug/LogUtils$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/debug/LogUtils;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    const-string/jumbo v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_17

    const/4 p1, 0x1

    if-eq p0, p1, :cond_11

    goto :goto_2a

    :cond_11
    sget-object p0, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-virtual {p0}, Lcom/android/common/debug/LogUtils;->dumpTrace()V

    goto :goto_2a

    :cond_17
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p0, [Ljava/lang/Object;

    if-eqz p1, :cond_2a

    const-string/jumbo p1, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    sget-object p1, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->access$updateDebugState(Lcom/android/common/debug/LogUtils;[Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method
