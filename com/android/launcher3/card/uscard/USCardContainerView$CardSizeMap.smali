.class public final Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/uscard/USCardContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CardSizeMap"
.end annotation


# instance fields
.field private final heightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

.field private final widthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "widthMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "heightMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->widthMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->heightMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getHeight(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->heightMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_14
    return p0
.end method

.method public final getHeightMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->heightMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getWidth(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->widthMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_14
    return p0
.end method

.method public final getWidthMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->widthMap:Ljava/util/Map;

    return-object p0
.end method

.method public final recordHeight(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->heightMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final recordWidth(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->widthMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateSize(IIILandroid/graphics/Rect;)V
    .registers 12

    const-string/jumbo v0, "paddingRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    sub-int v1, p2, v1

    sub-int v2, v0, p3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int v4, v1, p3

    div-int/2addr v4, v3

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->recordHeight(II)V

    invoke-virtual {p0, v3, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->recordHeight(II)V

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->recordWidth(II)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->recordWidth(II)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_77

    const-string/jumbo v3, "updateSize ("

    const-string v5, ", "

    const-string v6, "), gap: "

    invoke-static {v3, p1, v5, p2, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ("

    invoke-static {p1, p3, p2, v0, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p2, "), heightMap: ("

    invoke-static {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p2, "), widthMap: ("

    invoke-static {p1, v1, p2, v2, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")， paddingRect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "， Columns*Rows: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-static {p2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$getMDp$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2a

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-static {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$getMDp$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const-string p2, "LauncherCardView-USCardContainerView"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_77
    return-void
.end method
