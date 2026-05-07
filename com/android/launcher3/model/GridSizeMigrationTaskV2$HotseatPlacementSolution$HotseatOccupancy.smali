.class Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HotseatOccupancy"
.end annotation


# instance fields
.field private final mCells:[Z

.field public final synthetic this$0:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->mCells:[Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;ILcom/android/launcher3/model/GridSizeMigrationTaskV2$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;)[Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->mCells:[Z

    return-object p0
.end method

.method private markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution$HotseatOccupancy;->mCells:[Z

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aput-boolean p2, p0, p1

    return-void
.end method
