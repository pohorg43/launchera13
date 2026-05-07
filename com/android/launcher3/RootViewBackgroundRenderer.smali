.class public final Lcom/android/launcher3/RootViewBackgroundRenderer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;,
        Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/android/launcher3/RootViewBackgroundRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;

.field private static final TAG:Ljava/lang/String; = "RootViewBackgroundRenderer"


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundParam:Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

.field private mIsDarkMode:Z

.field private mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/RootViewBackgroundRenderer;->Companion:Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;

    new-instance v0, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion$BACKGROUND_ALPHA$1;

    invoke-direct {v0}, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion$BACKGROUND_ALPHA$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/RootViewBackgroundRenderer;->BACKGROUND_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

    invoke-direct {v0}, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mBackgroundParam:Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

    iput-object p1, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mIsDarkMode:Z

    invoke-direct {p0}, Lcom/android/launcher3/RootViewBackgroundRenderer;->initBgDrawable()V

    return-void
.end method

.method public static final synthetic access$getBACKGROUND_ALPHA$cp()Landroid/util/IntProperty;
    .registers 1

    sget-object v0, Lcom/android/launcher3/RootViewBackgroundRenderer;->BACKGROUND_ALPHA:Landroid/util/IntProperty;

    return-object v0
.end method

.method public static final synthetic access$getMBackgroundParam$p(Lcom/android/launcher3/RootViewBackgroundRenderer;)Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mBackgroundParam:Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

    return-object p0
.end method

.method public static final synthetic access$getMView$p(Lcom/android/launcher3/RootViewBackgroundRenderer;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mView:Landroid/view/View;

    return-object p0
.end method

.method private final initBgDrawable()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mIsDarkMode:Z

    if-eqz v0, :cond_c

    const-string p0, "RootViewBackgroundRenderer"

    const-string v0, "No to draw background for dark mode"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_1e

    const v1, 0x7f080655

    goto :goto_21

    :cond_1e
    const v1, 0x7f080654

    :goto_21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final drawBackground(Landroid/graphics/Canvas;)V
    .registers 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mIsDarkMode:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_12

    goto :goto_1b

    :cond_12
    iget-object v1, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mBackgroundParam:Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

    invoke-virtual {v1}, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1b
    iget-object v0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_20

    goto :goto_29

    :cond_20
    iget-object v1, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mBackgroundParam:Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

    invoke-virtual {v1}, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_29
    iget-object p0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getBackgroundParams()Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer;->mBackgroundParam:Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

    return-object p0
.end method

.method public final onWallpaperBrightnessChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/RootViewBackgroundRenderer;->initBgDrawable()V

    return-void
.end method
