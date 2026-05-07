.class final Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/EngineCardView;->obtainViewWithEngine(Lcom/oplus/card/manager/domain/model/UIData;)V
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

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;->invoke(Landroid/view/View;Ljava/lang/Integer;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;Ljava/lang/Integer;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "get card View: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", engine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Engine"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iget-object v0, v0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x1

    if-nez v0, :cond_36

    move v0, v2

    goto :goto_3a

    :cond_36
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    :goto_3a
    if-eqz v0, :cond_4c

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p0

    const-string p1, "createEngine callback but isDestroyed"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4c
    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    const/4 v1, 0x0

    if-nez p2, :cond_53

    move p2, v1

    goto :goto_57

    :cond_53
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_57
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;->handleGetViewCallback(Landroid/view/View;I)Z

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    if-nez p1, :cond_64

    :cond_62
    move v2, v1

    goto :goto_6a

    :cond_64
    invoke-virtual {p1}, Lcom/oplus/card/helper/SmartEngine;->isSeedCardEngine()Z

    move-result p1

    if-ne p1, v2, :cond_62

    :goto_6a
    if-eqz v2, :cond_81

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-interface {p1}, Lcom/oplus/card/manager/domain/ICardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object p1

    if-nez p1, :cond_75

    goto :goto_81

    :cond_75
    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->getPreViewUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p1

    if-nez p1, :cond_7c

    goto :goto_81

    :cond_7c
    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->obtainViewWithEngine(Lcom/oplus/card/manager/domain/model/UIData;)V

    :cond_81
    :goto_81
    return-void
.end method
