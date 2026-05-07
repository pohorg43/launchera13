.class public final synthetic Lcom/android/launcher3/h1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

.field public final synthetic c:I

.field public final synthetic d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V
    .registers 9

    iput p7, p0, Lcom/android/launcher3/h1;->a:I

    const/4 v0, 0x1

    if-eq p7, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/h1;->b:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iput p2, p0, Lcom/android/launcher3/h1;->c:I

    iput-object p3, p0, Lcom/android/launcher3/h1;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/android/launcher3/h1;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p5, p0, Lcom/android/launcher3/h1;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p6, p0, Lcom/android/launcher3/h1;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    iget v0, p0, Lcom/android/launcher3/h1;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_36

    :pswitch_6  #0x2
    iget-object v1, p0, Lcom/android/launcher3/h1;->b:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget v2, p0, Lcom/android/launcher3/h1;->c:I

    iget-object v3, p0, Lcom/android/launcher3/h1;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, p0, Lcom/android/launcher3/h1;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v5, p0, Lcom/android/launcher3/h1;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v6, p0, Lcom/android/launcher3/h1;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->e(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void

    :pswitch_16  #0x1
    iget-object v7, p0, Lcom/android/launcher3/h1;->b:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget v8, p0, Lcom/android/launcher3/h1;->c:I

    iget-object v9, p0, Lcom/android/launcher3/h1;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v10, p0, Lcom/android/launcher3/h1;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v11, p0, Lcom/android/launcher3/h1;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v12, p0, Lcom/android/launcher3/h1;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static/range {v7 .. v12}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->c(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void

    :pswitch_26  #0x0
    iget-object v0, p0, Lcom/android/launcher3/h1;->b:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget v1, p0, Lcom/android/launcher3/h1;->c:I

    iget-object v2, p0, Lcom/android/launcher3/h1;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v3, p0, Lcom/android/launcher3/h1;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, p0, Lcom/android/launcher3/h1;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v5, p0, Lcom/android/launcher3/h1;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->d(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void

    :goto_36
    iget-object v6, p0, Lcom/android/launcher3/h1;->b:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget v7, p0, Lcom/android/launcher3/h1;->c:I

    iget-object v8, p0, Lcom/android/launcher3/h1;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v9, p0, Lcom/android/launcher3/h1;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v10, p0, Lcom/android/launcher3/h1;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v11, p0, Lcom/android/launcher3/h1;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static/range {v6 .. v11}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->f(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_16  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
