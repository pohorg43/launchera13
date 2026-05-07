.class public Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridPlacementSolution"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

.field private final mMatchingScreenIdOnly:Z

.field private mNextStartX:I

.field private mNextStartY:I

.field private final mOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field private final mScreenId:I

.field private final mSortedItemsToPlace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

.field private final mTrgX:I

.field private final mTrgY:I


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Landroid/content/Context;IIILjava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;",
            "Landroid/content/Context;",
            "III",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    iput-object p4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {p1, p6, p7}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iput p5, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mScreenId:I

    iput p6, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgX:I

    iput p7, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgY:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartX:I

    iput p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartY:I

    invoke-static {p3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->access$300(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_44

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    iget-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 p4, 0x1

    invoke-virtual {p3, p2, p4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_31

    :cond_44
    iput-object p8, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mSortedItemsToPlace:Ljava/util/List;

    iput-boolean p9, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mMatchingScreenIdOnly:Z

    return-void
.end method

.method private findPlacement(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Z
    .registers 9

    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartY:I

    :goto_2
    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgY:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4e

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartX:I

    :goto_9
    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgX:I

    if-ge v1, v3, :cond_49

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v3, v1, v0, v4, v5}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {v4, v1, v0, v5, v6}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :cond_2b
    if-nez v3, :cond_33

    if-eqz v4, :cond_30

    goto :goto_33

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_33
    :goto_33
    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mScreenId:I

    iput v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartX:I

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartY:I

    return v3

    :cond_49
    iput v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mNextStartX:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4e
    return v2
.end method


# virtual methods
.method public find()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mSortedItemsToPlace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    iget-boolean v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mMatchingScreenIdOnly:Z

    if-eqz v2, :cond_1d

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mScreenId:I

    if-ge v3, v4, :cond_1d

    goto :goto_6

    :cond_1d
    if-eqz v2, :cond_26

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mScreenId:I

    if-le v2, v3, :cond_26

    goto :goto_54

    :cond_26
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgX:I

    if-gt v2, v3, :cond_50

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mTrgY:I

    if-le v2, v3, :cond_33

    goto :goto_50

    :cond_33
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->findPlacement(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    invoke-static {v4}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->access$400(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    invoke-static {v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->access$400(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->access$500(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_50
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_54
    :goto_54
    return-void
.end method
