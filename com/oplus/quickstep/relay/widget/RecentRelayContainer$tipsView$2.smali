.class final Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$tipsView$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/relay/RecentRelayInteraction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$tipsView$2;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;
    .registers 4

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    iget-object v1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$tipsView$2;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    invoke-static {v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->access$getMContext$p$s-1013495733(Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$tipsView$2;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$tipsView$2;->invoke()Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    move-result-object p0

    return-object p0
.end method
