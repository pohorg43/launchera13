.class final Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.quickstep.relay.data.RelayData$generateIcon$2"
    f = "RelayData.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/relay/data/RelayData;->generateIcon(Landroid/content/Context;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public label:I

.field public final synthetic this$0:Lcom/oplus/quickstep/relay/data/RelayData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/quickstep/relay/data/RelayData;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/quickstep/relay/data/RelayData;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->this$0:Lcom/oplus/quickstep/relay/data/RelayData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;

    iget-object v0, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->this$0:Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;-><init>(Landroid/content/Context;Lcom/oplus/quickstep/relay/data/RelayData;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget v0, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->label:I

    if-nez v0, :cond_60

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->$context:Landroid/content/Context;

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/android/launcher/Launcher;

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    const/4 v0, 0x0

    if-nez p1, :cond_16

    :goto_14
    move p1, v0

    goto :goto_23

    :cond_16
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getDockviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/dock/DockView;

    if-nez p1, :cond_1f

    goto :goto_14

    :cond_1f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    :goto_23
    if-gtz p1, :cond_34

    iget-object p1, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "context.resources"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->getDockIconSize(Landroid/content/res/Resources;)I

    move-result p1

    :cond_34
    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->this$0:Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-static {v2}, Lcom/oplus/quickstep/relay/data/RelayData;->access$getMCallingPackage$p(Lcom/oplus/quickstep/relay/data/RelayData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->this$0:Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-virtual {v3}, Lcom/oplus/quickstep/relay/data/RelayData;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->this$0:Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-virtual {v4}, Lcom/oplus/quickstep/relay/data/RelayData;->getSubIconUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataParser;->createAppConnectBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;->this$0:Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/relay/data/RelayData;->setBitmapInvalid(Z)V

    return-object p1

    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
