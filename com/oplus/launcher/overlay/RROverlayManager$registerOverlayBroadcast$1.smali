.class public final Lcom/oplus/launcher/overlay/RROverlayManager$registerOverlayBroadcast$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/launcher/overlay/RROverlayManager;->registerOverlayBroadcast(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/launcher/overlay/RROverlayManager;->access$getMOverlayPackage$p()Lcom/oplus/launcher/overlay/RROverlayPackageNone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/launcher/overlay/RROverlayPackageNone;->onOverlayChanged()V

    invoke-static {}, Lcom/oplus/launcher/overlay/RROverlayManager;->access$getMChangeListeners$p()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;

    invoke-interface {p1}, Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;->onOverlayChanged()V

    goto :goto_19

    :cond_29
    return-void
.end method
