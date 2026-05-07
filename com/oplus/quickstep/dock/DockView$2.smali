.class Lcom/oplus/quickstep/dock/DockView$2;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dock/DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/oplus/quickstep/dock/DockView<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/oplus/quickstep/dock/DockView;)Ljava/lang/Float;
    .registers 2

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockView;->access$200(Lcom/oplus/quickstep/dock/DockView;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView$2;->get(Lcom/oplus/quickstep/dock/DockView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/oplus/quickstep/dock/DockView;F)V
    .registers 3

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockView;->access$200(Lcom/oplus/quickstep/dock/DockView;)F

    move-result p0

    cmpl-float p0, p0, p2

    if-eqz p0, :cond_e

    invoke-static {p1, p2}, Lcom/oplus/quickstep/dock/DockView;->access$202(Lcom/oplus/quickstep/dock/DockView;F)F

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockView;->access$300(Lcom/oplus/quickstep/dock/DockView;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dock/DockView$2;->setValue(Lcom/oplus/quickstep/dock/DockView;F)V

    return-void
.end method
