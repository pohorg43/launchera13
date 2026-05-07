.class public Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/wallpaper/ShadowCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTextPos"
.end annotation


# instance fields
.field public mEnableShadow:Z

.field public mNeedCheck:Z

.field public mPos:[I

.field public mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mRect:Landroid/graphics/Rect;

    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mPos:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mEnableShadow:Z

    iput-boolean v0, p0, Lcom/android/launcher/wallpaper/ShadowCalculator$AppTextPos;->mNeedCheck:Z

    return-void
.end method
