.class Lcom/android/launcher3/folder/OplusFolderIcon$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/OplusFolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderIcon;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon$4;->this$0:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    check-cast p1, Lcom/android/launcher3/folder/OplusPreviewBackground;

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderIcon$4$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/OplusFolderIcon$4$1;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon$4;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->animateToFlash(Ljava/lang/Runnable;)V

    return-void
.end method
