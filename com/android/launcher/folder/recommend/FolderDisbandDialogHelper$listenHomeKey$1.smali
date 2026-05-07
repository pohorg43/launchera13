.class public final Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$listenHomeKey$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->listenHomeKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$listenHomeKey$1;->this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeKeyLongPressed()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$listenHomeKey$1;->this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onHomeKeyPressed()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$listenHomeKey$1;->this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
