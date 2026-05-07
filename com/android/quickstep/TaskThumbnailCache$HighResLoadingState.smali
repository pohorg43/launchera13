.class public Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighResLoadingState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFlingingFast:Z

.field private mForceHighResThumbnails:Z

.field private mHighResLoadingEnabled:Z

.field private mVisible:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/quickstep/TaskThumbnailCache;->access$000()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mForceHighResThumbnails:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/quickstep/TaskThumbnailCache$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mVisible:Z

    return p0
.end method

.method private updateState()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mHighResLoadingEnabled:Z

    iget-boolean v1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mForceHighResThumbnails:Z

    const/4 v2, 0x1

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mVisible:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mFlingingFast:Z

    if-nez v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    move v1, v2

    :goto_13
    iput-boolean v1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mHighResLoadingEnabled:Z

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1e
    if-ltz v0, :cond_30

    iget-object v1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;

    iget-boolean v2, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mHighResLoadingEnabled:Z

    invoke-interface {v1, v2}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;->onHighResLoadingStateChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_30
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mHighResLoadingEnabled:Z

    return p0
.end method

.method public removeCallback(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFlingingFast(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mFlingingFast:Z

    invoke-direct {p0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->updateState()V

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mVisible:Z

    invoke-direct {p0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->updateState()V

    return-void
.end method
