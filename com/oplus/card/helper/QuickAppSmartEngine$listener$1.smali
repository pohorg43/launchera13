.class public final Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/hapjs/card/api/IRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/helper/QuickAppSmartEngine;-><init>(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;


# direct methods
.method public constructor <init>(Lcom/oplus/card/helper/QuickAppSmartEngine;Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/helper/QuickAppSmartEngine;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    iput-object p2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderException(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-static {v0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->access$getTAG$p(Lcom/oplus/card/helper/QuickAppSmartEngine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-virtual {v2}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + onRenderException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "errorCode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1, v0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->$callback:Lkotlin/jvm/functions/Function2;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRenderFailed(ILjava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-static {v0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->access$getTAG$p(Lcom/oplus/card/helper/QuickAppSmartEngine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-virtual {v2}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + onRenderException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "errorCode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1, v0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->$callback:Lkotlin/jvm/functions/Function2;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public onRenderProgress()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-static {v0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->access$getTAG$p(Lcom/oplus/card/helper/QuickAppSmartEngine;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object p0

    const-string v1, " + onRenderProgress"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onRenderSuccess()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-static {v0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->access$getTAG$p(Lcom/oplus/card/helper/QuickAppSmartEngine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-virtual {v2}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + onRenderSuccess mCardCached = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-virtual {v2}, Lcom/oplus/card/helper/QuickAppSmartEngine;->getMCardCached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->$callback:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-virtual {v1}, Lcom/oplus/card/helper/QuickAppSmartEngine;->getMCard()Lorg/hapjs/card/api/Card;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_36

    move-object v1, v2

    goto :goto_3a

    :cond_36
    invoke-interface {v1}, Lorg/hapjs/card/api/Card;->getView()Landroid/view/View;

    move-result-object v1

    :goto_3a
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;->this$0:Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-virtual {p0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->getMCard()Lorg/hapjs/card/api/Card;

    move-result-object v0

    if-nez v0, :cond_4b

    goto :goto_4f

    :cond_4b
    invoke-interface {v0}, Lorg/hapjs/card/api/Card;->getView()Landroid/view/View;

    move-result-object v2

    :goto_4f
    invoke-virtual {p0, v2}, Lcom/oplus/card/helper/QuickAppSmartEngine;->onVisible(Landroid/view/View;)V

    return-void
.end method

.method public onRouter(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
