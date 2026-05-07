.class public final Lcom/android/quickstep/OplusRecentTasksListImpl$loadTasksInBackground$tmpLockedUsers$1;
.super Landroid/util/SparseBooleanArray;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusRecentTasksListImpl;->loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/OplusRecentTasksListImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusRecentTasksListImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/OplusRecentTasksListImpl$loadTasksInBackground$tmpLockedUsers$1;->this$0:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_11

    iget-object v0, p0, Lcom/android/quickstep/OplusRecentTasksListImpl$loadTasksInBackground$tmpLockedUsers$1;->this$0:Lcom/android/quickstep/OplusRecentTasksListImpl;

    iget-object v0, v0, Lcom/android/quickstep/RecentTasksList;->mKeyguardManager:Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/KeyguardManagerCompat;->isDeviceLocked(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_11
    invoke-super {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method
