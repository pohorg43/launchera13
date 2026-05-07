.class public Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderInterruptParam"
.end annotation


# static fields
.field private static sInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;


# instance fields
.field private mFolderBackgroundRoomInProgress:F

.field private mFolderItemRoomInProgress:F

.field private mWorkspaceAnimateProgress:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    invoke-direct {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->sInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->mFolderItemRoomInProgress:F

    iput v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->mFolderBackgroundRoomInProgress:F

    iput v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->mWorkspaceAnimateProgress:F

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;
    .registers 1

    sget-object v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->sInterruptParam:Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    return-object v0
.end method


# virtual methods
.method public getFolderBackgroundRoomInProgress()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->mFolderBackgroundRoomInProgress:F

    return p0
.end method

.method public getFolderItemRoomInProgress()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->mFolderItemRoomInProgress:F

    return p0
.end method

.method public getWorkspaceAnimateProgress()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->mWorkspaceAnimateProgress:F

    return p0
.end method

.method public setFolderBackgroundRoomInProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->mFolderBackgroundRoomInProgress:F

    return-void
.end method

.method public setFolderItemRoomInProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->mFolderItemRoomInProgress:F

    return-void
.end method

.method public setWorkspaceAnimateProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->mWorkspaceAnimateProgress:F

    return-void
.end method
