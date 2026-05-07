.class Lcom/android/launcher3/folder/FolderExtImplV2$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderExtImplV2;->startDragLayerAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/FolderExtImplV2;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/FolderExtImplV2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderExtImplV2$3;->this$0:Lcom/android/launcher3/folder/FolderExtImplV2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2$3;->this$0:Lcom/android/launcher3/folder/FolderExtImplV2;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/FolderExtImplV2;->access$002(Lcom/android/launcher3/folder/FolderExtImplV2;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
