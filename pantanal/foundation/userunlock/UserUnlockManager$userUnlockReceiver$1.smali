.class public final Lpantanal/foundation/userunlock/UserUnlockManager$userUnlockReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/foundation/userunlock/UserUnlockManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Le4/a;->a:Le4/a;

    new-instance p1, Lpantanal/foundation/userunlock/UserUnlockManager$userUnlockReceiver$1$a;

    invoke-direct {p1, p2}, Lpantanal/foundation/userunlock/UserUnlockManager$userUnlockReceiver$1$a;-><init>(Landroid/content/Intent;)V

    const-string p2, "UserUnlockManager"

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p2, v0, p1, v1}, Le4/a;->e(Le4/a;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;I)V

    sget-object p0, Lpantanal/foundation/userunlock/UserUnlockManager;->a:Lpantanal/foundation/userunlock/UserUnlockManager;

    sget-object p0, Lpantanal/foundation/userunlock/UserUnlockManager;->b:Ly2/e;

    check-cast p0, Ly2/l;

    invoke-virtual {p0}, Ly2/l;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpantanal/foundation/userunlock/UserUnlockManager$a;

    invoke-interface {p1}, Lpantanal/foundation/userunlock/UserUnlockManager$a;->a()V

    goto :goto_28

    :cond_38
    return-void
.end method
