.class public Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;
.super Lcom/android/quickstep/views/TaskThumbnailView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion;
    }
.end annotation


# static fields
.field private static final CLEAR:I = -0x2

.field private static final CORNER_RADIUS_CHANGED_THRESHOLD:F = 0.8f

.field public static final Companion:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion;

.field private static final DEFAULT_FRAME:I = -0x1

.field public static final LIGHTNING_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskThumbnailView;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_BACKGROUND_ALPHA:I = 0xe6

.field private static final MAX_FRAME:I = 0x63

.field private static final MIN_FRAME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OplusTaskThumbnailView"


# instance fields
.field private backgroundPaintAlpha:I

.field private final backgroundPath:Landroid/graphics/Path;

.field private bgHeight:I

.field private contentProtectTextPaintAlpha:I

.field private contentProtectTextRect:Landroid/graphics/Rect;

.field private contentProtectionAnim:Landroid/animation/ValueAnimator;

.field private currentFrame:I

.field private currentRotation:I

.field private distance:I

.field private drawPath:Landroid/graphics/Path;

.field private drawRect:Landroid/graphics/RectF;

.field private forceRecalculateFullscreenRadius:Z

.field private fullscreenProgress:F

.field private isContentProtection:Z

.field private isPrivacy:Z

.field private lightningAnimator:Landroid/animation/ValueAnimator;

.field private final mCanvasRect:Landroid/graphics/RectF;

.field private final mContentProtectBackgroundPaint$delegate:Ly2/e;

.field private final mContentProtectIcon$delegate:Ly2/e;

.field private final mContentProtectIconMargin$delegate:Ly2/e;

.field private final mContentProtectSmallIcon$delegate:Ly2/e;

.field private final mContentProtectStaticLayout$delegate:Ly2/e;

.field private final mContentProtectTextMargin$delegate:Ly2/e;

.field private final mContentProtectTextMaxWidth$delegate:Ly2/e;

.field private final mContentProtectTextPaint$delegate:Ly2/e;

.field private final mContentProtectTextSize$delegate:Ly2/e;

.field private mCurrentCornerRadius:F

.field private final mDarkColorObserver:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;

.field private final mEncyptTextMargin$delegate:Ly2/e;

.field private final mEncyptTextSize$delegate:Ly2/e;

.field private final mExpandFoldCornerRadius$delegate:Ly2/e;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private final mIconPaint$delegate:Ly2/e;

.field private final mIconRect:Landroid/graphics/Rect;

.field private final mOrnamentPaint$delegate:Ly2/e;

.field private final mPlicyTextPaint$delegate:Ly2/e;

.field private final mPrivacyIcon$delegate:Ly2/e;

.field private final mPrivacyIconPaint$delegate:Ly2/e;

.field private final mRadius:[F

.field private mShowLightningIcon:Z

.field private final mStartupBackgroundPaint$delegate:Ly2/e;

.field private final mStaticLayout$delegate:Ly2/e;

.field private final mTabletCornerRadius$delegate:Ly2/e;

.field private final mTextPaint$delegate:Ly2/e;

.field private margin:I

.field private needAnimate:Z

.field private normalTaskFullscreenRadius:F

.field private normalTaskViewCornerRadius:F

.field private ornamentHeight:F

.field private ornamentLongSide:F

.field private final ornamentPath:Landroid/graphics/Path;

.field private ornamentShortSide:F

.field private paintAlpha:I

.field private privacyIconPaintAlpha:I

.field private splitScreenWindowCornerRadius:I

.field private splitTaskFullscreenRadius:F

.field private splitTaskViewCornerRadius:F

.field private taskBackgroundColor:I

.field private final textRect:Landroid/graphics/Rect;

.field private title:Ljava/lang/String;

.field private final tmpRect:Landroid/graphics/RectF;

.field private viewRadiusArray:[F

.field private windowCornerRadius:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion;

    new-instance v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion$LIGHTNING_ALPHA$1;

    invoke-direct {v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion$LIGHTNING_ALPHA$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->LIGHTNING_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/TaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mDarkColorObserver:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;

    sget-object p1, Ly2/g;->c:Ly2/g;

    sget-object p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mIconPaint$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mIconPaint$2;

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconPaint$delegate:Ly2/e;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mOrnamentPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mOrnamentPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mOrnamentPaint$delegate:Ly2/e;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mTextPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mTextPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mTextPaint$delegate:Ly2/e;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPlicyTextPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPlicyTextPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPlicyTextPaint$delegate:Ly2/e;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPrivacyIconPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPrivacyIconPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPrivacyIconPaint$delegate:Ly2/e;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectBackgroundPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectBackgroundPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectBackgroundPaint$delegate:Ly2/e;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextPaint$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextPaint$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextPaint$delegate:Ly2/e;

    sget-object p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mStartupBackgroundPaint$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mStartupBackgroundPaint$2;

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mStartupBackgroundPaint$delegate:Ly2/e;

    sget-object p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPrivacyIcon$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mPrivacyIcon$2;

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPrivacyIcon$delegate:Ly2/e;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectIcon$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectIcon$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectIcon$delegate:Ly2/e;

    new-instance p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectSmallIcon$2;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectSmallIcon$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectSmallIcon$delegate:Ly2/e;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPath:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    const/16 p3, 0x8

    new-array v1, p3, [F

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mStaticLayout$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mStaticLayout$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mStaticLayout$delegate:Ly2/e;

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectStaticLayout$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectStaticLayout$delegate:Ly2/e;

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mEncyptTextSize$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mEncyptTextSize$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mEncyptTextSize$delegate:Ly2/e;

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mEncyptTextMargin$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mEncyptTextMargin$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mEncyptTextMargin$delegate:Ly2/e;

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextSize$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextSize$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextSize$delegate:Ly2/e;

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextMargin$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextMargin$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextMargin$delegate:Ly2/e;

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextMaxWidth$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectTextMaxWidth$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextMaxWidth$delegate:Ly2/e;

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectIconMargin$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mContentProtectIconMargin$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectIconMargin$delegate:Ly2/e;

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mTabletCornerRadius$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mTabletCornerRadius$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mTabletCornerRadius$delegate:Ly2/e;

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mExpandFoldCornerRadius$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mExpandFoldCornerRadius$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mExpandFoldCornerRadius$delegate:Ly2/e;

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->taskBackgroundColor:I

    const/4 p1, -0x2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->privacyIconPaintAlpha:I

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextPaintAlpha:I

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPaintAlpha:I

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->paintAlpha:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawRect:Landroid/graphics/RectF;

    new-array p1, p3, [F

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStartupBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStartupBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStartupBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f060694

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070a7b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070a7c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->margin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f120391

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "resources.getString(R.st…us_lightning_start_title)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070a7f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070a7e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070a7d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget-object p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2, v1, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int p1, p2, p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->distance:I

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b()I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->taskBackgroundColor:I

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x7f1203a0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v2, p3, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sget-object p1, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->windowCornerRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getSplitScreenWindowRoundCornerRadiusPx()I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitScreenWindowCornerRadius:I

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->executeContentProtectStateChangeAnimation$lambda-9$lambda-7(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$drawableToBitmap(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMContentProtectTextPaint(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/text/TextPaint;
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMContext$p$s-359386749(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMPlicyTextPaint(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/text/TextPaint;
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPlicyTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMPrivacyIcon(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Landroid/graphics/Bitmap;
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIcon()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMShowLightningIcon$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    return p0
.end method

.method public static final synthetic access$getTaskBackgroundColor$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->taskBackgroundColor:I

    return p0
.end method

.method public static final synthetic access$resetPaintAlpha(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetPaintAlpha()V

    return-void
.end method

.method public static final synthetic access$setContentProtectionAnim$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectionAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setLightningAnimator$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->lightningAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setNeedAnimate$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->needAnimate:Z

    return-void
.end method

.method public static final synthetic access$setTaskBackgroundColor$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->taskBackgroundColor:I

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->showLightningAnimation$lambda-5$lambda-4(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final calculateCornerRadius()F
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    :cond_6
    move v0, v1

    goto :goto_d

    :cond_8
    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isSplitScreenTask:Z

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_d
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_20

    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_20
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v3, :cond_2c

    :cond_2a
    move v3, v1

    goto :goto_31

    :cond_2c
    iget-boolean v3, v3, Lcom/android/systemui/shared/recents/model/Task;->isSplitScreenTask:Z

    if-ne v3, v2, :cond_2a

    move v3, v2

    :goto_31
    if-eqz v3, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3f
    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    sget-object v5, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "mContext"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenCornerRadiusFraction()F

    move-result v5

    int-to-float v0, v0

    mul-float/2addr v5, v0

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTabletCornerRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->isNextTask()Z

    move-result v5

    if-eqz v5, :cond_d8

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    iget v5, v5, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    const/high16 v6, 0x40000000  # 2.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d8

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_83

    move-object v5, v6

    goto :goto_87

    :cond_83
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v5

    :goto_87
    instance-of v7, v5, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v7, :cond_8e

    move-object v6, v5

    check-cast v6, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_8e
    if-nez v6, :cond_92

    :cond_90
    move v5, v1

    goto :goto_99

    :cond_92
    invoke-virtual {v6}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGustureActive()Z

    move-result v5

    if-ne v5, v2, :cond_90

    move v5, v2

    :goto_99
    if-eqz v5, :cond_d8

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_d4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-nez v5, :cond_d4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-nez v5, :cond_c6

    move v5, v2

    goto :goto_c7

    :cond_c6
    move v5, v1

    :goto_c7
    if-eqz v5, :cond_ca

    goto :goto_d4

    :cond_ca
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v5

    div-float/2addr v0, v5

    goto :goto_d8

    :cond_d4
    :goto_d4
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTabletCornerRadius()F

    move-result v0

    :cond_d8
    :goto_d8
    move v5, v0

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getMtaskScaleProgerssStart()Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v5, v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    goto :goto_f0

    :cond_e6
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMExpandFoldCornerRadius()F

    move-result v5

    :cond_f0
    :goto_f0
    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskFullscreenRadius:F

    invoke-direct {p0, v0, v5, v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->calculateCornerRadiusByProgress(FFZ)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    iget-object v6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v6, :cond_fe

    :cond_fc
    move v6, v1

    goto :goto_103

    :cond_fe
    iget-boolean v6, v6, Lcom/android/systemui/shared/recents/model/Task;->isSplitScreenTask:Z

    if-ne v6, v2, :cond_fc

    move v6, v2

    :goto_103
    if-eqz v6, :cond_10b

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskFullscreenRadius:F

    invoke-direct {p0, v0, v5, v2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->calculateCornerRadiusByProgress(FFZ)F

    move-result v0

    :cond_10b
    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    cmpg-float v0, v4, v0

    if-nez v0, :cond_113

    move v0, v2

    goto :goto_114

    :cond_113
    move v0, v1

    :goto_114
    if-eqz v0, :cond_11f

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    cmpg-float v0, v3, v0

    if-nez v0, :cond_11d

    move v1, v2

    :cond_11d
    if-nez v1, :cond_122

    :cond_11f
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetCornerRadiusArray()V

    :cond_122
    return v5
.end method

.method private final calculateCornerRadiusByProgress(FFZ)F
    .registers 5

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    goto :goto_6

    :cond_5
    move p3, p2

    :goto_6
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_28

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->fullscreenProgress:F

    const v0, 0x3f4ccccd  # 0.8f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_28

    cmpl-float v0, p2, p1

    if-lez v0, :cond_28

    const/high16 p3, 0x3f800000  # 1.0f

    sub-float/2addr p3, p0

    const p0, 0x3e4ccccc  # 0.19999999f

    div-float/2addr p3, p0

    invoke-static {p3, p1, p2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p3

    :cond_28
    return p3
.end method

.method private final calculateNextFrame()I
    .registers 2

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0x63

    if-le p0, v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return p0
.end method

.method private final calculateTaskFullscreenRadius()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->forceRecalculateFullscreenRadius:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->forceRecalculateFullscreenRadius:Z

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-le v3, v2, :cond_1d

    move v3, v2

    :cond_1d
    int-to-float v2, v3

    if-le v0, v1, :cond_21

    move v0, v1

    :cond_21
    int-to-float v0, v0

    div-float/2addr v2, v0

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->windowCornerRadius:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskFullscreenRadius:F

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitScreenWindowCornerRadius:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskFullscreenRadius:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "calculateTaskFullscreenRadius: normalTaskFullscreenRadius = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskFullscreenRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", splitTaskFullscreenRadius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskFullscreenRadius:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskThumbnailView"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method private final canShowLightningIcon(Z)V
    .registers 2

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateFrame(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_14

    :cond_d
    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateFrame(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    :goto_14
    return-void
.end method

.method private final cancelContentProtectAnimation()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskThumbnailView"

    const-string v2, "cancelContentProtectAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectionAnim:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_e

    goto :goto_17

    :cond_e
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_17
    :goto_17
    return-void
.end method

.method private final checkAndUpdatePrivacy(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_3c

    :cond_3
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_10

    goto :goto_18

    :cond_10
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isPrivacy(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_32

    invoke-virtual {v1, v2, v0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isPrivacy(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_32

    :cond_30
    move v0, v4

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isPrivacy:Z

    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v4, v0, v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onContentProtectStateChanged$default(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZZILjava/lang/Object;)V

    :goto_3c
    return-void
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "drawBackground: rotation = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCurrentCornerRadius:F

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateLightningCorner(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    if-eqz v0, :cond_5b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_49

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    goto :goto_6d

    :cond_36
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_6d

    :cond_49
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_6d

    :cond_5b
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_6d
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->tmpRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStartupBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawContentProtect(Landroid/graphics/Canvas;FFFFF)V
    .registers 15

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result p6

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p4, v0

    const/4 v1, 0x2

    int-to-float v2, v1

    div-float/2addr v0, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p5, v3

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextSize()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMargin()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    div-float v2, p4, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMargin()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p5, v4

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectStaticLayout()Landroid/text/StaticLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectSmallIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    div-int/2addr v6, v1

    int-to-float v5, v6

    sub-float/2addr v4, v5

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMaxWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v5, v6, :cond_58

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMaxWidth()I

    move-result v5

    goto :goto_5e

    :cond_58
    iget-object v5, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    :goto_5e
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectSmallIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIconMargin()I

    move-result v7

    add-int/2addr v6, v7

    div-int/2addr v6, v1

    div-int/2addr v5, v1

    add-int/2addr v5, v6

    if-nez p6, :cond_76

    int-to-float p6, v5

    sub-float p6, v2, p6

    int-to-float v1, v6

    add-float/2addr v2, v1

    goto :goto_83

    :cond_76
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectSmallIcon()Landroid/graphics/Bitmap;

    move-result-object p6

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    sub-int/2addr v5, p6

    int-to-float p6, v5

    add-float/2addr p6, v2

    int-to-float v1, v6

    sub-float/2addr v2, v1

    :goto_83
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, v0, v3, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectSmallIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p6, v4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextMargin()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p5, p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectStaticLayout()Landroid/text/StaticLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p5, p2

    invoke-virtual {p1, v2, p5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectStaticLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final drawIconAndText(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->margin:I

    add-int/2addr v2, v1

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    const/4 v3, 0x2

    if-eqz v1, :cond_15a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_bf

    if-eq v1, v3, :cond_15a

    const/4 v4, 0x3

    if-eq v1, v4, :cond_24

    goto/16 :goto_1db

    :cond_24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x43870000  # 270.0f

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p1, v1, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    int-to-float v4, v3

    div-float/2addr v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->distance:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    int-to-float v2, v2

    sub-float/2addr v4, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v5, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_ba

    :cond_8e
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_ba
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1db

    :cond_bf
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x42b40000  # 90.0f

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p1, v1, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    int-to-float v4, v3

    div-float/2addr v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->distance:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    if-nez v0, :cond_129

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    int-to-float v2, v2

    sub-float/2addr v4, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v5, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_155

    :cond_129
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1db

    :cond_15a
    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/2addr v2, v3

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    div-int/2addr v6, v3

    int-to-float v3, v6

    sub-float v3, v5, v3

    iget v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->distance:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    if-nez v0, :cond_1ab

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    int-to-float v2, v2

    sub-float/2addr v5, v2

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1db

    :cond_1ab
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->title:Ljava/lang/String;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1db
    return-void
.end method

.method private final drawOrnament(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    const/4 v1, 0x2

    if-eqz v0, :cond_d7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_76

    if-eq v0, v1, :cond_d7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    goto/16 :goto_13f

    :cond_14
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    int-to-float v1, v1

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_13f

    :cond_76
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    int-to-float v1, v1

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_13f

    :cond_d7
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentLongSide:F

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    add-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentShortSide:F

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->bgHeight:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentHeight:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :goto_13f
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMOrnamentPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawPrivacy(Landroid/graphics/Canvas;FFFFF)V
    .registers 10

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIcon()Landroid/graphics/Bitmap;

    move-result-object p6

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    int-to-float p6, p6

    sub-float p6, p4, p6

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p6, v0

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p5, v1

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMEncyptTextSize()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMEncyptTextMargin()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p6, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    div-float/2addr p4, v0

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v1, p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMEncyptTextMargin()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v1, p2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result p2

    add-float/2addr p2, v1

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStaticLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private final drawSomethings(Landroid/graphics/Canvas;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2d

    const-string v0, "OplusTaskThumbnailView#drawSomethings("

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawOrnament(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawIconAndText(Landroid/graphics/Canvas;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2d
    return-void
.end method

.method private final drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_18

    :cond_16
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_18
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private final executeContentProtectStateChangeAnimation(Z)V
    .registers 5

    const-string v0, "executeContentProtectStateChangeAnimation: reverse = "

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->privacyIconPaintAlpha:I

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextPaintAlpha:I

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPaintAlpha:I

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->paintAlpha:I

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->cancelContentProtectAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_58

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectionAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3f

    goto :goto_57

    :cond_3f
    new-instance v1, Lcom/android/launcher/pageindicators/c;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/pageindicators/c;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$executeContentProtectStateChangeAnimation$lambda-9$$inlined$doOnEnd$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$executeContentProtectStateChangeAnimation$lambda-9$$inlined$doOnEnd$1;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_57
    return-void

    :array_58
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final executeContentProtectStateChangeAnimation$lambda-9$lambda-7(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZLandroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updatePaintAlpha(FZ)V

    return-void
.end method

.method private final getMContentProtectBackgroundPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectBackgroundPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMContentProtectIcon()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectIcon$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final getMContentProtectIconMargin()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectIconMargin$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMContentProtectSmallIcon()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectSmallIcon$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final getMContentProtectStaticLayout()Landroid/text/StaticLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectStaticLayout$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/StaticLayout;

    return-object p0
.end method

.method private final getMContentProtectTextMargin()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextMargin$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMContentProtectTextMaxWidth()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextMaxWidth$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMContentProtectTextPaint()Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextPaint;

    return-object p0
.end method

.method private final getMContentProtectTextSize()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mContentProtectTextSize$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMEncyptTextMargin()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mEncyptTextMargin$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMEncyptTextSize()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mEncyptTextSize$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMExpandFoldCornerRadius()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mExpandFoldCornerRadius$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getMIconPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMOrnamentPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mOrnamentPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMPlicyTextPaint()Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPlicyTextPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextPaint;

    return-object p0
.end method

.method private final getMPrivacyIcon()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPrivacyIcon$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final getMPrivacyIconPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mPrivacyIconPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMStartupBackgroundPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mStartupBackgroundPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMStaticLayout()Landroid/text/StaticLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mStaticLayout$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/StaticLayout;

    return-object p0
.end method

.method private final getMTabletCornerRadius()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mTabletCornerRadius$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getMTextPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mTextPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic onContentProtectStateChanged$default(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZZILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onContentProtectStateChanged(ZZ)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onContentProtectStateChanged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
    .registers 4

    const-string p0, "id="

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    move-object v0, v1

    goto :goto_13

    :cond_d
    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", wm="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez p1, :cond_20

    goto :goto_26

    :cond_20
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_26
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final print(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p0, "thumbnail="

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", scale="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rotation="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", orientation="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->orientation:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", insets="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    if-nez p1, :cond_35

    const/4 p1, 0x0

    goto :goto_39

    :cond_35
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    :goto_39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->ornamentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateFrame(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->cancelLightningAnimation()V

    return-void
.end method

.method private final resetCornerRadiusArray()V
    .registers 12

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_c

    :cond_a
    move v1, v3

    goto :goto_11

    :cond_c
    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isSecondaryTask:Z

    if-ne v1, v2, :cond_a

    move v1, v2

    :goto_11
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_84

    move v7, v3

    :goto_1e
    add-int/lit8 v8, v7, 0x1

    if-eqz v0, :cond_39

    if-gt v5, v7, :cond_28

    if-gt v7, v4, :cond_28

    move v9, v2

    goto :goto_29

    :cond_28
    move v9, v3

    :goto_29
    if-eqz v9, :cond_32

    iget-object v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v10, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    aput v10, v9, v7

    goto :goto_48

    :cond_32
    iget-object v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v10, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    aput v10, v9, v7

    goto :goto_48

    :cond_39
    if-ge v7, v6, :cond_42

    iget-object v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v10, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    aput v10, v9, v7

    goto :goto_48

    :cond_42
    iget-object v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v10, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    aput v10, v9, v7

    :goto_48
    if-le v8, v1, :cond_4b

    goto :goto_84

    :cond_4b
    move v7, v8

    goto :goto_1e

    :cond_4d
    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_84

    move v7, v3

    :goto_55
    add-int/lit8 v8, v7, 0x1

    if-eqz v0, :cond_70

    if-gt v5, v7, :cond_5f

    if-gt v7, v4, :cond_5f

    move v9, v2

    goto :goto_60

    :cond_5f
    move v9, v3

    :goto_60
    if-eqz v9, :cond_69

    iget-object v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v10, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    aput v10, v9, v7

    goto :goto_7f

    :cond_69
    iget-object v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v10, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    aput v10, v9, v7

    goto :goto_7f

    :cond_70
    if-ge v7, v6, :cond_79

    iget-object v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v10, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->normalTaskViewCornerRadius:F

    aput v10, v9, v7

    goto :goto_7f

    :cond_79
    iget-object v9, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    iget v10, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->splitTaskViewCornerRadius:F

    aput v10, v9, v7

    :goto_7f
    if-le v8, v1, :cond_82

    goto :goto_84

    :cond_82
    move v7, v8

    goto :goto_55

    :cond_84
    :goto_84
    return-void
.end method

.method private final resetDrawPath(FFFF)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->viewRadiusArray:[F

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p0, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private final resetPaintAlpha()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskThumbnailView"

    const-string v2, "resetPaintAlpha()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->privacyIconPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->paintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setLightningAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static final showLightningAnimation$lambda-5$lambda-4(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->calculateNextFrame()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusTaskThumbnailView#updateFrame("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateFrame(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private final updateLightningCorner(F)V
    .registers 9

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "updateLightningCorner: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5f

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_43

    const/4 v5, 0x3

    if-eq v0, v5, :cond_27

    goto :goto_79

    :cond_27
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_79

    :goto_2e
    add-int/lit8 v5, v2, 0x1

    if-lt v2, v4, :cond_3a

    if-le v2, v3, :cond_35

    goto :goto_3a

    :cond_35
    iget-object v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput p1, v6, v2

    goto :goto_3e

    :cond_3a
    :goto_3a
    iget-object v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput v1, v6, v2

    :goto_3e
    if-le v5, v0, :cond_41

    goto :goto_79

    :cond_41
    move v2, v5

    goto :goto_2e

    :cond_43
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_79

    :goto_4a
    add-int/lit8 v5, v2, 0x1

    if-lt v2, v4, :cond_56

    if-le v2, v3, :cond_51

    goto :goto_56

    :cond_51
    iget-object v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput v1, v6, v2

    goto :goto_5a

    :cond_56
    :goto_56
    iget-object v6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput p1, v6, v2

    :goto_5a
    if-le v5, v0, :cond_5d

    goto :goto_79

    :cond_5d
    move v2, v5

    goto :goto_4a

    :cond_5f
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_79

    :goto_66
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x4

    if-ge v2, v4, :cond_70

    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput v1, v4, v2

    goto :goto_74

    :cond_70
    iget-object v4, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mRadius:[F

    aput p1, v4, v2

    :goto_74
    if-le v3, v0, :cond_77

    goto :goto_79

    :cond_77
    move v2, v3

    goto :goto_66

    :cond_79
    :goto_79
    return-void
.end method

.method private final updatePaintAlpha(FZ)V
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_42

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p2

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->privacyIconPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->paintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setLightningAlpha(F)V

    goto :goto_7d

    :cond_42
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object p2

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->privacyIconPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMContentProtectTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->contentProtectTextPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->backgroundPaintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->paintAlpha:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setLightningAlpha(F)V

    :goto_7d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public bind(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->forceRecalculateFullscreenRadius:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->checkAndUpdatePrivacy(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->taskBackgroundColor:I

    goto :goto_23

    :cond_1a
    if-nez p1, :cond_1e

    const/4 v1, -0x1

    goto :goto_23

    :cond_1e
    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    :goto_23
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "bind: pkg="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_3d

    goto :goto_41

    :cond_3d
    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v3, :cond_43

    :goto_41
    move-object v3, v2

    goto :goto_47

    :cond_43
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", colorBackground="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_53

    move-object v3, v2

    goto :goto_59

    :cond_53
    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", lighting="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_65

    move-object v3, v2

    goto :goto_6b

    :cond_65
    iget-boolean v3, p1, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_6b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", protect="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_76

    goto :goto_7c

    :cond_76
    iget-boolean v2, p1, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusTaskThumbnailView"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    if-eqz p1, :cond_91

    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    if-eqz p1, :cond_91

    goto :goto_92

    :cond_91
    const/4 v0, 0x0

    :goto_92
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->canShowLightningIcon(Z)V

    return-void
.end method

.method public final cancelLightningAnimation()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelLightningAnimation: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lightningAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->lightningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->lightningAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_31

    goto :goto_3a

    :cond_31
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public drawOnCanvas(Landroid/graphics/Canvas;FFFFF)V
    .registers 14

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isPrivacy:Z

    if-eqz v0, :cond_d

    invoke-direct/range {p0 .. p6}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPrivacy(Landroid/graphics/Canvas;FFFFF)V

    return-void

    :cond_d
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    if-nez v0, :cond_17

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->needAnimate:Z

    if-eqz v0, :cond_1f

    :cond_17
    invoke-direct/range {p0 .. p6}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawContentProtect(Landroid/graphics/Canvas;FFFFF)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->needAnimate:Z

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCanvasRect:Landroid/graphics/RectF;

    float-to-double v1, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, p5

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iput p6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mCurrentCornerRadius:F

    iget-object p6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v0, 0x1

    if-eqz p6, :cond_42

    iget-object p6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz p6, :cond_42

    iget-object p6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez p6, :cond_40

    goto :goto_42

    :cond_40
    const/4 p6, 0x0

    goto :goto_43

    :cond_42
    :goto_42
    move p6, v0

    :goto_43
    if-nez p6, :cond_5f

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getWrapper()Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;->getClippedInsets()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_5f

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isTranslucent:Z

    if-eqz v1, :cond_78

    :cond_5f
    int-to-float v1, v0

    add-float v2, p2, v1

    add-float v3, p3, v1

    sub-float v4, p4, v1

    sub-float v1, p5, v1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p6, :cond_78

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawSomethings(Landroid/graphics/Canvas;)V

    return-void

    :cond_78
    int-to-float p6, v0

    add-float v0, p2, p6

    add-float v1, p3, p6

    sub-float v2, p4, p6

    sub-float p6, p5, p6

    invoke-direct {p0, v0, v1, v2, p6}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object p6, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    iget-object p6, p6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    invoke-interface {p6}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->getIrregularPreviewHelper()Lcom/android/quickstep/IrregularPreviewHelper;

    move-result-object v0

    iget-object v6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/IrregularPreviewHelper;->clipIrregularCanvas(Landroid/graphics/Canvas;FFFFLcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->resetDrawPath(FFFF)V

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawSomethings(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getLightningAlpha()F
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mDarkColorObserver:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_f

    goto :goto_1c

    :cond_f
    iget-object v1, v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v0, v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final onContentProtectStateChanged(ZZ)V
    .registers 7

    const-string v0, "onContentProtectStateChanged: isContentProtection="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    const-string v2, ", isContentProtect="

    const-string v3, ", animate="

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v0, p2, v1, v2}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    if-ne v0, p1, :cond_1b

    return-void

    :cond_1b
    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection:Z

    iput-boolean p2, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->needAnimate:Z

    if-eqz p2, :cond_26

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->executeContentProtectStateChangeAnimation(Z)V

    :cond_26
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskThumbnailView"

    const-string v2, "onDetachedFromWindow"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->reset()V

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mDarkColorObserver:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_1b

    goto :goto_20

    :cond_1b
    iget-object v0, v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_20
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->calculateTaskFullscreenRadius()V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v0, v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->calculateCornerRadius()F

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v1, v1, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float v5, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v6, v1, v0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawOnCanvas(Landroid/graphics/Canvas;FFFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final onProtectStateChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isPrivacy:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onRotationChanged(I)V
    .registers 5

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    if-eq v0, p1, :cond_d

    const-string v0, "onRotationChanged: rotation="

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentRotation:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setFullscreenProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->fullscreenProgress:F

    return-void
.end method

.method public final setLightningAlpha(F)V
    .registers 5

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMIconPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMStartupBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v2, 0xe6

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMOrnamentPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMTextPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V
    .registers 9

    const-string/jumbo v0, "setThumbnail(), data: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_c

    move-object v2, v1

    goto :goto_10

    :cond_c
    invoke-direct {p0, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->print(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Ljava/lang/String;

    move-result-object v2

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mData null ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    const-string v3, ", refreshNow="

    const-string v4, ", task: "

    invoke-static {v0, v2, v3, p3, v4}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_2a

    move-object v2, v1

    goto :goto_2e

    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v2

    :goto_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v2, :cond_3b

    goto :goto_3f

    :cond_3b
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v1

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_50

    goto :goto_58

    :cond_50
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    iput-boolean v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isInGrounp:Z

    :goto_58
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_63

    if-nez p2, :cond_63

    sget-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-eqz v0, :cond_63

    return-void

    :cond_63
    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    return-void
.end method

.method public final showLightningAnimation()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mShowLightningIcon:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showLightningAnimation: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->cancelLightningAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_56

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->lightningAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3a

    goto :goto_55

    :cond_3a
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v1, Lcom/android/quickstep/views/a;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/a;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$showLightningAnimation$1$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$showLightningAnimation$1$2;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_55
    return-void

    :array_56
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final updateBackgroundAlpha(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateFrame(I)V
    .registers 5

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "updateFrame: frame="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskThumbnailView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const/16 v0, 0x63

    const/4 v1, 0x0

    if-le p1, v0, :cond_23

    move p1, v1

    :cond_23
    iput p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_57

    const/4 v0, -0x1

    const-string v2, "context"

    if-eq p1, v0, :cond_43

    sget-object p1, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->INSTANCE:Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$INSTANCE;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->currentFrame:I

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_58

    :cond_43
    sget-object p1, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->INSTANCE:Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader$INSTANCE;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;

    invoke-virtual {p1}, Lcom/oplus/quickstep/quickstartup/OplusLightningSourceLoader;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_58

    :cond_57
    const/4 p1, 0x0

    :goto_58
    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_5d

    goto :goto_6a

    :cond_5d
    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_6a
    return-void
.end method

.method public updateThumbnailPaintFilter()V
    .registers 6

    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    const/16 v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimmingPaintAfterClearing:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMPrivacyIconPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_40

    :cond_28
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    iget v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimColor:I

    iget v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    iget v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlphaMultiplier:F

    mul-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
