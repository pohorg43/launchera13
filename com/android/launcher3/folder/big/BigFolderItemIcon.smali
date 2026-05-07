.class public final Lcom/android/launcher3/folder/big/BigFolderItemIcon;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/BigFolderItemIcon$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/BigFolderItemIcon$Companion;

.field public static final TAG:Ljava/lang/String; = "BigFolderItemIcon"


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private iconRectBounds:Landroid/graphics/Rect;

.field private index:I

.field private itemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field private parentFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderItemIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderItemIcon$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->iconRectBounds:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->index:I

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getIconRectBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->iconRectBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->index:I

    return p0
.end method

.method public final getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->itemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-object p0
.end method

.method public final getParentFolderIcon()Lcom/android/launcher3/folder/big/BigFolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->parentFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    return-object p0
.end method

.method public final setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setIconRectBounds(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->iconRectBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public final setIndex(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->index:I

    return-void
.end method

.method public final setItemInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->itemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-void
.end method

.method public final setParentFolderIcon(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->parentFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    return-void
.end method

.method public setVisibility(I)V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->index:I

    if-ltz v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->itemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->parentFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_d

    goto :goto_3d

    :cond_d
    const/4 v0, 0x1

    if-nez p1, :cond_12

    move v1, v0

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    const-string/jumbo v2, "setVisibility: "

    const-string v3, " index"

    invoke-static {v2, p1, v3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->index:I

    const-string v3, "BigFolderItemIcon"

    invoke-static {p1, v2, v3}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->parentFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->index:I

    xor-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->hidePreviewItem(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->parentFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3d
    :goto_3d
    return-void
.end method
