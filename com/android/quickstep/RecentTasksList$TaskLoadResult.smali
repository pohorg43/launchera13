.class public Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
.super Ljava/util/ArrayList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RecentTasksList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskLoadResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/quickstep/util/GroupTask;",
        ">;"
    }
.end annotation


# instance fields
.field public final mKeysOnly:Z

.field public final mRequestId:I


# direct methods
.method public constructor <init>(IZI)V
    .registers 4

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput p1, p0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mRequestId:I

    iput-boolean p2, p0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mKeysOnly:Z

    return-void
.end method


# virtual methods
.method public isValidForRequest(IZ)Z
    .registers 4

    iget v0, p0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mRequestId:I

    if-ne v0, p1, :cond_c

    iget-boolean p0, p0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mKeysOnly:Z

    if-eqz p0, :cond_a

    if-eqz p2, :cond_c

    :cond_a
    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
