.class public final synthetic Lcom/oplus/quickstep/relay/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/relay/RecentRelayInteraction;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/relay/RecentRelayInteraction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/a;->a:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/relay/a;->a:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    check-cast p1, Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->a(Lcom/oplus/quickstep/relay/RecentRelayInteraction;Lcom/oplus/quickstep/relay/data/RelayData;)V

    return-void
.end method
