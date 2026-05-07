.class final Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/launcher3/card/RenderFailRetry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/CommonCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/CommonCardView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;->this$0:Lcom/android/launcher3/card/CommonCardView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/launcher3/card/RenderFailRetry;
    .registers 3

    new-instance v0, Lcom/android/launcher3/card/RenderFailRetry;

    iget-object v1, p0, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;->this$0:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/CommonCardView;->getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;->this$0:Lcom/android/launcher3/card/CommonCardView;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/card/RenderFailRetry;-><init>(Lcom/android/launcher3/card/CardModelWrapper;Lcom/android/launcher3/card/CommonCardView;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;->invoke()Lcom/android/launcher3/card/RenderFailRetry;

    move-result-object p0

    return-object p0
.end method
