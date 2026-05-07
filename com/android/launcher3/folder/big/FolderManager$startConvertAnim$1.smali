.class public final Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/FolderManager;->startConvertAnim(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;Z[ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;->$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;->$runnable:Ljava/lang/Runnable;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_8
    return-void
.end method
