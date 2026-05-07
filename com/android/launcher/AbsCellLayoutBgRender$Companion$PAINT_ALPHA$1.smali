.class public final Lcom/android/launcher/AbsCellLayoutBgRender$Companion$PAINT_ALPHA$1;
.super Landroid/util/IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/AbsCellLayoutBgRender;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/android/launcher3/OplusCellLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "CellLayoutBg"

    invoke-direct {p0, v0}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/OplusCellLayout;)Ljava/lang/Integer;
    .registers 2

    const-string p0, "cellLayout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->getBgRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->getAlpha()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p0, p1}, Lcom/android/launcher/AbsCellLayoutBgRender$Companion$PAINT_ALPHA$1;->get(Lcom/android/launcher3/OplusCellLayout;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/launcher3/OplusCellLayout;I)V
    .registers 3

    const-string p0, "cellLayout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->getBgRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AbsCellLayoutBgRender$Companion$PAINT_ALPHA$1;->setValue(Lcom/android/launcher3/OplusCellLayout;I)V

    return-void
.end method
