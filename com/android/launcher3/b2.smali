.class public final synthetic Lcom/android/launcher3/b2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 8

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/b2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/b2;->g:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher3/b2;->c:I

    iput-object p4, p0, Lcom/android/launcher3/b2;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p5, p0, Lcom/android/launcher3/b2;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p6, p0, Lcom/android/launcher3/b2;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V
    .registers 8

    iput p7, p0, Lcom/android/launcher3/b2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b2;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/b2;->c:I

    iput-object p3, p0, Lcom/android/launcher3/b2;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/android/launcher3/b2;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p5, p0, Lcom/android/launcher3/b2;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p6, p0, Lcom/android/launcher3/b2;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Lcom/android/launcher3/b2;->a:I

    packed-switch v0, :pswitch_data_48

    goto :goto_32

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/b2;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;

    iget v2, p0, Lcom/android/launcher3/b2;->c:I

    iget-object v3, p0, Lcom/android/launcher3/b2;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, p0, Lcom/android/launcher3/b2;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v5, p0, Lcom/android/launcher3/b2;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object p0, p0, Lcom/android/launcher3/b2;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->b(Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void

    :pswitch_1c  #0x0
    iget-object v0, p0, Lcom/android/launcher3/b2;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;

    iget v2, p0, Lcom/android/launcher3/b2;->c:I

    iget-object v3, p0, Lcom/android/launcher3/b2;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, p0, Lcom/android/launcher3/b2;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v5, p0, Lcom/android/launcher3/b2;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object p0, p0, Lcom/android/launcher3/b2;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->a(Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void

    :goto_32
    iget-object v0, p0, Lcom/android/launcher3/b2;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v0, p0, Lcom/android/launcher3/b2;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/launcher3/b2;->c:I

    iget-object v4, p0, Lcom/android/launcher3/b2;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v5, p0, Lcom/android/launcher3/b2;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v6, p0, Lcom/android/launcher3/b2;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/LauncherAnimationRunner;->a(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_1c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
