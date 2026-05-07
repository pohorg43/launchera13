.class public final Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$CONTENT_PROTECT$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/TaskShortcutFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
            ")",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_5

    move-object v0, p0

    goto :goto_9

    :cond_5
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    :goto_9
    if-nez v0, :cond_c

    return-object p0

    :cond_c
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_15

    goto :goto_1d

    :cond_15
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v2, v1

    :goto_1d
    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v3, v4}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isPrivacy(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_40

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v2, v0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isPrivacy(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_40

    :cond_3e
    move v0, v4

    goto :goto_41

    :cond_40
    :goto_40
    move v0, v5

    :goto_41
    if-eqz v0, :cond_44

    return-object p0

    :cond_44
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_50

    :cond_4e
    move v0, v4

    goto :goto_55

    :cond_50
    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    if-ne v0, v5, :cond_4e

    move v0, v5

    :goto_55
    instance-of v1, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v1, :cond_68

    check-cast p0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getSecondaryTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    if-nez p0, :cond_62

    goto :goto_67

    :cond_62
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isContentProtect:Z

    if-ne p0, v5, :cond_67

    move v4, v5

    :cond_67
    :goto_67
    and-int/2addr v0, v4

    :cond_68
    new-instance p0, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/shortcuts/OplusPrivacyProtectionShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Z)V

    return-object p0
.end method
