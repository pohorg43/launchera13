.class public final Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;
.super Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/OplusInvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OplusDisplayOption"
.end annotation


# instance fields
.field private allAppsCellHeightDp:F

.field private cellLayoutPadding:F

.field public folder:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

.field private gridCellPadding:F

.field private hotseatHeightDp:F

.field private hotseatPaddingBottomDp:F

.field private hotseatPaddingTopDp:F

.field private iconDrawablePaddingDp:F

.field private iconTextHeightDp:F

.field private indicatorHeight:F

.field private indicatorNumberTextSize:F

.field private indicatorSpacing:F

.field private indicatorWidth:F

.field private landscapeIconDrawablePaddingDp:F

.field private mHotseatMarginBottomDp:F

.field private systemShortcutItemHeight:F

.field private textStyleBold:Z

.field private workspaceIconTopPaddingDp:F

.field private workspacePaddingLRDp:F

.field private workspacePaddingTop:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->textStyleBold:Z

    new-instance p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    invoke-direct {p1}, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->folder:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->textStyleBold:Z

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->initOplusAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->gridCellPadding:F

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingLRDp:F

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorWidth:F

    return p0
.end method

.method public static synthetic access$1100(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorHeight:F

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorSpacing:F

    return p0
.end method

.method public static synthetic access$1300(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorNumberTextSize:F

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->textStyleBold:Z

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->systemShortcutItemHeight:F

    return p0
.end method

.method public static synthetic access$1600(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspaceIconTopPaddingDp:F

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->mHotseatMarginBottomDp:F

    return p0
.end method

.method public static synthetic access$1800(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconTextHeightDp:F

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingTop:F

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->cellLayoutPadding:F

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingTopDp:F

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingBottomDp:F

    return p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->landscapeIconDrawablePaddingDp:F

    return p0
.end method

.method public static synthetic access$700(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconDrawablePaddingDp:F

    return p0
.end method

.method public static synthetic access$800(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->allAppsCellHeightDp:F

    return p0
.end method

.method public static synthetic access$900(Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatHeightDp:F

    return p0
.end method


# virtual methods
.method public add(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .registers 4

    const-class v0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;

    invoke-static {p1, v0}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->add(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object p0

    return-object p0

    :cond_d
    check-cast p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->gridCellPadding:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->gridCellPadding:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->gridCellPadding:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingLRDp:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingLRDp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingLRDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingTop:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingTop:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingTop:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->cellLayoutPadding:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->cellLayoutPadding:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->cellLayoutPadding:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconDrawablePaddingDp:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconDrawablePaddingDp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconDrawablePaddingDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingTopDp:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingTopDp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingTopDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingBottomDp:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingBottomDp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingBottomDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatHeightDp:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatHeightDp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatHeightDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->allAppsCellHeightDp:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->allAppsCellHeightDp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->allAppsCellHeightDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->landscapeIconDrawablePaddingDp:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->landscapeIconDrawablePaddingDp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->landscapeIconDrawablePaddingDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorWidth:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorWidth:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorHeight:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorHeight:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorSpacing:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorSpacing:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorSpacing:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorNumberTextSize:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorNumberTextSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorNumberTextSize:F

    iget-boolean v0, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->textStyleBold:Z

    iput-boolean v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->textStyleBold:Z

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->systemShortcutItemHeight:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->systemShortcutItemHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->systemShortcutItemHeight:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspaceIconTopPaddingDp:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspaceIconTopPaddingDp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspaceIconTopPaddingDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->mHotseatMarginBottomDp:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->mHotseatMarginBottomDp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->mHotseatMarginBottomDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconTextHeightDp:F

    iget v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconTextHeightDp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconTextHeightDp:F

    iget-object v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->folder:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    if-eqz v0, :cond_9a

    iget-object v1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->folder:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;->add(Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;)Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    :cond_9a
    invoke-super {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->add(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object p0

    return-object p0
.end method

.method public getFolder()Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->folder:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    return-object p0
.end method

.method public initOplusAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    sget-object v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    invoke-direct {v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->folder:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    sget-object v1, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/common/util/FontManager;

    invoke-virtual {v2}, Lcom/android/common/util/FontManager;->getAdaptedTextSizePx()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    iget-object v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v2, v2, v3

    const/16 v4, 0x17

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v0, v3

    const/16 v0, 0x48

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->gridCellPadding:F

    const/16 v0, 0x58

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingLRDp:F

    const/16 v0, 0x59

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingTop:F

    const/16 v0, 0x45

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->cellLayoutPadding:F

    const/16 v0, 0x4d

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconDrawablePaddingDp:F

    const/16 v0, 0x4c

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingTopDp:F

    const/16 v0, 0x4b

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingBottomDp:F

    const/16 v0, 0x49

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatHeightDp:F

    const/16 v0, 0x44

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->allAppsCellHeightDp:F

    const/16 v0, 0x52

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorWidth:F

    const/16 v0, 0x4f

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorHeight:F

    const/16 v0, 0x51

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorSpacing:F

    const/16 v0, 0x50

    const/high16 v4, 0x40a00000  # 5.0f

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorNumberTextSize:F

    const/16 v0, 0x56

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->textStyleBold:Z

    const/16 v0, 0x55

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->systemShortcutItemHeight:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconDrawablePaddingDp:F

    const/16 v4, 0x54

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->landscapeIconDrawablePaddingDp:F

    const/16 v0, 0x57

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspaceIconTopPaddingDp:F

    const/16 v0, 0x4a

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->mHotseatMarginBottomDp:F

    const/16 v0, 0x4e

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconTextHeightDp:F

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isBigSimpleModeSupport()Z

    move-result p2

    if-eqz p2, :cond_109

    iget-object p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object p2, p2, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    const-string v0, "Simple"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_109

    iget-object p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    aput v0, p2, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b000a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconDrawablePaddingDp:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0009

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatHeightDp:F

    :cond_109
    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/FontManager;

    invoke-virtual {p0, p1}, Lcom/android/common/util/FontManager;->updateLauncherTextScale(Landroid/content/Context;)V

    return-void
.end method

.method public multiply(F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->gridCellPadding:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->gridCellPadding:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingLRDp:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingLRDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingTop:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspacePaddingTop:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->cellLayoutPadding:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->cellLayoutPadding:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconDrawablePaddingDp:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconDrawablePaddingDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingTopDp:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingTopDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingBottomDp:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatPaddingBottomDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatHeightDp:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->hotseatHeightDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->allAppsCellHeightDp:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->allAppsCellHeightDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->landscapeIconDrawablePaddingDp:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->landscapeIconDrawablePaddingDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorWidth:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorHeight:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorHeight:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorSpacing:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorSpacing:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorNumberTextSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->indicatorNumberTextSize:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspaceIconTopPaddingDp:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->workspaceIconTopPaddingDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->mHotseatMarginBottomDp:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->mHotseatMarginBottomDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconTextHeightDp:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->iconTextHeightDp:F

    iget v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->systemShortcutItemHeight:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->systemShortcutItemHeight:F

    iget-object v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->folder:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    if-eqz v0, :cond_61

    invoke-static {v0, p1}, Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;->access$1900(Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;F)Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    :cond_61
    invoke-super {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->multiply(F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object p0

    return-object p0
.end method

.method public setFolder(Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile$OplusDisplayOption;->folder:Lcom/android/launcher3/OplusInvariantDeviceProfile$FolderDisplayOption;

    return-void
.end method
