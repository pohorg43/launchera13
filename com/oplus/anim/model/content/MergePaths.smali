.class public Lcom/oplus/anim/model/content/MergePaths;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
    }
.end annotation


# instance fields
.field private final hidden:Z

.field private final mode:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/content/MergePaths;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/anim/model/content/MergePaths;->mode:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    iput-boolean p3, p0, Lcom/oplus/anim/model/content/MergePaths;->hidden:Z

    return-void
.end method


# virtual methods
.method public getMode()Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/MergePaths;->mode:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/MergePaths;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/content/MergePaths;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePathsForKitKatAndAbove()Z

    move-result p1

    if-nez p1, :cond_d

    const-string p0, "Animation contains merge paths but they are disabled."

    invoke-static {p0}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance p1, Lcom/oplus/anim/animation/content/MergePathsContent;

    invoke-direct {p1, p0}, Lcom/oplus/anim/animation/content/MergePathsContent;-><init>(Lcom/oplus/anim/model/content/MergePaths;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "MergePaths{mode="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/anim/model/content/MergePaths;->mode:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
