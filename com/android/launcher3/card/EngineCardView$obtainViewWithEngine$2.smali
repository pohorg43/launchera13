.class final Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/EngineCardView;->obtainViewWithEngine(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/EngineCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$2;->invoke(Landroid/view/View;Ljava/lang/Integer;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;Ljava/lang/Integer;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "get card View: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", engine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Engine"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iget-object v0, v0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_35

    const/4 v0, 0x1

    goto :goto_39

    :cond_35
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    :goto_39
    if-eqz v0, :cond_4b

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p0

    const-string p1, "createEngine callback but isDestroyed"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4b
    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$2;->this$0:Lcom/android/launcher3/card/EngineCardView;

    if-nez p2, :cond_51

    const/4 p2, 0x0

    goto :goto_55

    :cond_51
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_55
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;->handleGetViewCallback(Landroid/view/View;I)Z

    return-void
.end method
