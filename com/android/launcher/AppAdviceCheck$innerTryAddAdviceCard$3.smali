.class final Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/AppAdviceCheck;->innerTryAddAdviceCard(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $newWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

.field public final synthetic $oldWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;->$oldWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iput-object p3, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;->$newWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;->invoke(ZLjava/lang/String;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(ZLjava/lang/String;)V
    .registers 9

    const-string/jumbo v0, "resultMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;->$launcher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_d

    goto :goto_49

    :cond_d
    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_49

    :cond_14
    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_49

    :cond_1b
    sget-object p1, Lq3/q0;->a:Lq3/b0;

    sget-object v1, Lv3/q;->a:Lq3/r1;

    new-instance v3, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;

    iget-object p1, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;->$oldWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object p2, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;->$launcher:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;->$newWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, p0, v2}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3$1;-><init>(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lb3/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    goto :goto_49

    :cond_32
    invoke-static {}, Lcom/android/launcher/AppAdviceCheck;->access$getMReInstallCallback$p()Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/AppAdviceCheck;->access$getReInstallType$p()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onFail(ILjava/lang/String;)V

    const-string/jumbo p0, "tryAddAppAdviceCard "

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppAdviceCheck"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return-void
.end method
