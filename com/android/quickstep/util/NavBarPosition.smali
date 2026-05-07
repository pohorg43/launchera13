.class public Lcom/android/quickstep/util/NavBarPosition;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mDisplayRotation:I

.field private final mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/DisplayController$NavigationMode;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iput p2, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/launcher3/util/DisplayController$Info;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget p1, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iput p1, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    return-void
.end method


# virtual methods
.method public getRotation()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 p0, 0x42b40000  # 90.0f

    goto :goto_14

    :cond_9
    invoke-virtual {p0}, Lcom/android/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, -0x5a

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    int-to-float p0, p0

    :goto_14
    return p0
.end method

.method public isLeftEdge()Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v0, v1, :cond_d

    iget p0, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isRightEdge()Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_c

    iget p0, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    if-ne p0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method
