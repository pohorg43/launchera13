.class public abstract Lcom/android/launcher/AbsCellLayoutBgRender;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/AbsCellLayoutBgRender$Companion;,
        Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/AbsCellLayoutBgRender$Companion;

.field public static final PAINT_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/android/launcher3/OplusCellLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private mCellLayout:Lcom/android/launcher3/OplusCellLayout;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mRenderParam:Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

.field private mWpLightColor:I

.field private mWpNormalColor:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/AbsCellLayoutBgRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/AbsCellLayoutBgRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/AbsCellLayoutBgRender;->Companion:Lcom/android/launcher/AbsCellLayoutBgRender$Companion;

    new-instance v0, Lcom/android/launcher/AbsCellLayoutBgRender$Companion$PAINT_ALPHA$1;

    invoke-direct {v0}, Lcom/android/launcher/AbsCellLayoutBgRender$Companion$PAINT_ALPHA$1;-><init>()V

    sput-object v0, Lcom/android/launcher/AbsCellLayoutBgRender;->PAINT_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    invoke-direct {v0}, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mRenderParam:Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    iput-object p1, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600a1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mWpLightColor:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600a2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mWpNormalColor:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070590

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mRadius:F

    iget-object p1, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->updateColor()V

    return-void
.end method


# virtual methods
.method public abstract animateBackground(ZZZ)V
.end method

.method public abstract cancelAnimation()V
.end method

.method public abstract drawBackground(Landroid/graphics/Canvas;I)I
.end method

.method public final getMCellLayout()Lcom/android/launcher3/OplusCellLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    return-object p0
.end method

.method public final getMLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public final getMPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getMRadius()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mRadius:F

    return p0
.end method

.method public final getMRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mRenderParam:Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    return-object p0
.end method

.method public final getRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mRenderParam:Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    return-object p0
.end method

.method public abstract isAnimating()Z
.end method

.method public final setMCellLayout(Lcom/android/launcher3/OplusCellLayout;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    return-void
.end method

.method public final setMLauncher(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public final setMPaint(Landroid/graphics/Paint;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final setMRadius(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mRadius:F

    return-void
.end method

.method public final setMRenderParam(Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mRenderParam:Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    return-void
.end method

.method public final updateColor()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_d

    iget p0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mWpLightColor:I

    goto :goto_f

    :cond_d
    iget p0, p0, Lcom/android/launcher/AbsCellLayoutBgRender;->mWpNormalColor:I

    :goto_f
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
