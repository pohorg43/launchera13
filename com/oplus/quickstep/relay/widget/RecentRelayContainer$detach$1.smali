.class final Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$detach$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->detach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$detach$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$detach$1;->invoke()V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$detach$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    goto :goto_23

    :cond_11
    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$detach$1;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_23

    const-string p0, "RecentRelayContainer"

    const-string v0, "detach after hide."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method
