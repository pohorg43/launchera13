.class public final Lcom/oplus/card/helper/NormalSmartEngine$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/CardUICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/helper/NormalSmartEngine;->_init_$lambda-0(Lcom/oplus/card/helper/NormalSmartEngine;Lkotlin/jvm/functions/Function2;Lcom/oplus/smartsdk/ISmartViewApi;)V
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

.field public final synthetic this$0:Lcom/oplus/card/helper/NormalSmartEngine;


# direct methods
.method public constructor <init>(Lcom/oplus/card/helper/NormalSmartEngine;Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/helper/NormalSmartEngine;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/helper/NormalSmartEngine$1$1;->this$0:Lcom/oplus/card/helper/NormalSmartEngine;

    iput-object p2, p0, Lcom/oplus/card/helper/NormalSmartEngine$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Landroid/view/View;ILjava/lang/String;)V
    .registers 7

    const-string v0, "cardName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NormalSmartEngine"

    invoke-static {v0, p3, v1}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p1, :cond_29

    move-object p1, p3

    goto :goto_54

    :cond_29
    iget-object v0, p0, Lcom/oplus/card/helper/NormalSmartEngine$1$1;->this$0:Lcom/oplus/card/helper/NormalSmartEngine;

    iget-object v1, p0, Lcom/oplus/card/helper/NormalSmartEngine$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lcom/oplus/card/helper/NormalSmartEngine;->access$getSmartEngineView$p(Lcom/oplus/card/helper/NormalSmartEngine;)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_4b

    invoke-static {v0}, Lcom/oplus/card/helper/NormalSmartEngine;->access$getSmartEngineView$p(Lcom/oplus/card/helper/NormalSmartEngine;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/card/helper/NormalSmartEngine;->access$release(Lcom/oplus/card/helper/NormalSmartEngine;Landroid/view/View;)V

    invoke-static {v0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->access$setSmartEngineView$p(Lcom/oplus/card/helper/NormalSmartEngine;Landroid/view/View;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->onVisible(Landroid/view/View;)V

    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->register(Ljava/lang/Object;)V

    goto :goto_52

    :cond_4b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_52
    sget-object p1, Ly2/p;->a:Ly2/p;

    :goto_54
    if-nez p1, :cond_5f

    iget-object p0, p0, Lcom/oplus/card/helper/NormalSmartEngine$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    return-void
.end method
