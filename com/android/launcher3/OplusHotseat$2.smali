.class Lcom/android/launcher3/OplusHotseat$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusHotseat;->initUpdateSizeRunable(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusHotseat;

.field public final synthetic val$posKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusHotseat;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusHotseat$2;->this$0:Lcom/android/launcher3/OplusHotseat;

    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat$2;->val$posKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "Hotseat"

    const-string v1, "ColorHotseat"

    const-string/jumbo v2, "updateSizeAfterDeleteView."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$2;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->updateSizeAfterDeleteView()V

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$2;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v0}, Lcom/android/launcher3/OplusHotseat;->access$200(Lcom/android/launcher3/OplusHotseat;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat$2;->val$posKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
