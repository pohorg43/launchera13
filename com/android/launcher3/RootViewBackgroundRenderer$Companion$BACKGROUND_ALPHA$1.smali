.class public final Lcom/android/launcher3/RootViewBackgroundRenderer$Companion$BACKGROUND_ALPHA$1;
.super Landroid/util/IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/RootViewBackgroundRenderer;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/android/launcher3/RootViewBackgroundRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "backgroundAlpha"

    invoke-direct {p0, v0}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/RootViewBackgroundRenderer;)Ljava/lang/Integer;
    .registers 2

    const-string/jumbo p0, "render"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/RootViewBackgroundRenderer;->access$getMBackgroundParam$p(Lcom/android/launcher3/RootViewBackgroundRenderer;)Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->getAlpha()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/RootViewBackgroundRenderer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion$BACKGROUND_ALPHA$1;->get(Lcom/android/launcher3/RootViewBackgroundRenderer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/launcher3/RootViewBackgroundRenderer;I)V
    .registers 3

    const-string/jumbo p0, "render"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/RootViewBackgroundRenderer;->access$getMBackgroundParam$p(Lcom/android/launcher3/RootViewBackgroundRenderer;)Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->setAlpha(I)V

    invoke-static {p1}, Lcom/android/launcher3/RootViewBackgroundRenderer;->access$getMView$p(Lcom/android/launcher3/RootViewBackgroundRenderer;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/RootViewBackgroundRenderer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion$BACKGROUND_ALPHA$1;->setValue(Lcom/android/launcher3/RootViewBackgroundRenderer;I)V

    return-void
.end method
