.class public Lcom/oplus/onehanded/OneHandedConstant;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ARROW_BITMAP_HEIGHT:I = 0x24

.field public static final ARROW_BITMAP_HEIGHT_RATIO:D = 0.014925373134328358

.field public static final ARROW_BITMAP_WIDTH:I = 0x6e

.field public static final ARROW_BITMAP_WIDTH_RATIO:D = 0.10185185185185185

.field public static final DEFAULT_SCREEN_HEIGHT:I = 0x96c

.field public static final DEFAULT_SCREEN_WIDTH:I = 0x438

.field public static final ONE_HANDED_PERCENTAGE_CONFIG:F = 0.5f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGestureRegionHeight(Landroid/content/Context;)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$dimen;->one_handed_gesture_region_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
