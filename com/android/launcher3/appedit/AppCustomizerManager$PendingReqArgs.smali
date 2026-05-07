.class public final Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/appedit/AppCustomizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingReqArgs"
.end annotation


# instance fields
.field private component:Ljava/lang/String;

.field private itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private pendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->component:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final clear2()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->pendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->component:Ljava/lang/String;

    return-void
.end method

.method public final getComponent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->component:Ljava/lang/String;

    return-object p0
.end method

.method public final getItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-object p0
.end method

.method public final getPendingRequestArgs()Lcom/android/launcher3/util/PendingRequestArgs;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->pendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    return-object p0
.end method

.method public final setComponent(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->component:Ljava/lang/String;

    return-void
.end method

.method public final setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-void
.end method

.method public final setPendingRequestArgs(Lcom/android/launcher3/util/PendingRequestArgs;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->pendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    return-void
.end method
