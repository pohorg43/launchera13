.class public Lcom/android/launcher3/util/RunnableList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mDestroyed:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/RunnableList;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/util/RunnableList;->mDestroyed:Z

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    :cond_16
    iget-object p0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public executeAllAndClear()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p0, :cond_1a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-void
.end method

.method public executeAllAndDestroy()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/RunnableList;->mDestroyed:Z

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndClear()V

    return-void
.end method
