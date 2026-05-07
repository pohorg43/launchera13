.class Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer$1;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;)Ljava/lang/Float;
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer$1;->get(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Ljava/lang/Float;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    invoke-static {p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->access$000(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;)Lcom/android/launcher3/iconrender/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer$1;->set(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Ljava/lang/Float;)V

    return-void
.end method
