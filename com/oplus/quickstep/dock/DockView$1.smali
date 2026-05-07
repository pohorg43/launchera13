.class Lcom/oplus/quickstep/dock/DockView$1;
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

    invoke-static {p1}, Lcom/oplus/quickstep/dock/DockView;->access$000(Lcom/oplus/quickstep/dock/DockView;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView$1;->get(Lcom/oplus/quickstep/dock/DockView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/oplus/quickstep/dock/DockView;F)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-static {p1, p2}, Lcom/oplus/quickstep/dock/DockView;->access$100(Lcom/oplus/quickstep/dock/DockView;F)V

    :cond_5
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dock/DockView$1;->setValue(Lcom/oplus/quickstep/dock/DockView;F)V

    return-void
.end method
