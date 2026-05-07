.class public final Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/RootViewBackgroundRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackgroundParam"
.end annotation


# instance fields
.field private alpha:I

.field private backgroundRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->backgroundRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->alpha:I

    return p0
.end method

.method public final getBackgroundRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->backgroundRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final setAlpha(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->alpha:I

    return-void
.end method

.method public final setBackgroundRect(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->backgroundRect:Landroid/graphics/Rect;

    return-void
.end method
