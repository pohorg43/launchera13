.class public Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitScreenMenuOperationInfo"
.end annotation


# instance fields
.field private mCloseSplitMenu:I

.field private mDragSplitLine:I

.field private mOpenSplitMenu:I

.field private mPrimaryPkg:Ljava/lang/String;

.field private mSaveSplitCombination:I

.field private mSecondaryPkg:Ljava/lang/String;

.field private mSwitchSplitScreen:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mOpenSplitMenu:I

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mCloseSplitMenu:I

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSwitchSplitScreen:I

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mDragSplitLine:I

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSaveSplitCombination:I

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mOpenSplitMenu:I

    return p0
.end method

.method public static synthetic access$100(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mCloseSplitMenu:I

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSwitchSplitScreen:I

    return p0
.end method

.method public static synthetic access$300(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mDragSplitLine:I

    return p0
.end method

.method public static synthetic access$400(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSaveSplitCombination:I

    return p0
.end method

.method public static synthetic access$500(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mPrimaryPkg:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSecondaryPkg:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->initStatus()V

    return-void
.end method

.method private initStatus()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mOpenSplitMenu:I

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mCloseSplitMenu:I

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSwitchSplitScreen:I

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mDragSplitLine:I

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSaveSplitCombination:I

    return-void
.end method


# virtual methods
.method public setCloseSplitMenuTriggered()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mCloseSplitMenu:I

    return-void
.end method

.method public setDragSplitLineTriggered()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mDragSplitLine:I

    return-void
.end method

.method public setOpenSplitMenuTriggered()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mOpenSplitMenu:I

    return-void
.end method

.method public setSaveSplitCombination(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSaveSplitCombination:I

    iput-object p1, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mPrimaryPkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSecondaryPkg:Ljava/lang/String;

    return-void
.end method

.method public setSwitchSplitScreenTriggered()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSwitchSplitScreen:I

    return-void
.end method
