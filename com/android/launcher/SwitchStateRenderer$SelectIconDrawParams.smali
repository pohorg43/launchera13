.class public Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/SwitchStateRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectIconDrawParams"
.end annotation


# instance fields
.field public alpha:I

.field public color:I

.field public iconBounds:Landroid/graphics/Rect;

.field public isFadeAnimating:Z

.field public lastFadeState:Z

.field public mIsRTL:Z

.field public scale:F

.field public selected:Z

.field public stateSwitching:Z

.field public stateSwitchingAnimaRunning:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->mIsRTL:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->iconBounds:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->isFadeAnimating:Z

    iput-boolean v0, p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->lastFadeState:Z

    iput-boolean p1, p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->mIsRTL:Z

    return-void
.end method
