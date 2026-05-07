.class public Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSplashscreenType(ZZ)I
    .registers 2

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_9

    :cond_4
    if-eqz p1, :cond_8

    const/4 p0, 0x4

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method


# virtual methods
.method public getSuggestedWindowType(Landroid/window/StartingWindowInfo;)I
    .registers 16

    iget p0, p1, Landroid/window/StartingWindowInfo;->f:I

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    and-int/lit8 v4, p0, 0x4

    if-eqz v4, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v1

    :goto_19
    and-int/lit8 v5, p0, 0x8

    if-eqz v5, :cond_1f

    move v5, v2

    goto :goto_20

    :cond_1f
    move v5, v1

    :goto_20
    and-int/lit8 v6, p0, 0x10

    if-eqz v6, :cond_26

    move v6, v2

    goto :goto_27

    :cond_26
    move v6, v1

    :goto_27
    and-int/lit8 v7, p0, 0x20

    if-eqz v7, :cond_2d

    move v7, v2

    goto :goto_2e

    :cond_2d
    move v7, v1

    :goto_2e
    const/high16 v8, -0x80000000

    and-int/2addr v8, p0

    if-eqz v8, :cond_35

    move v8, v2

    goto :goto_36

    :cond_35
    move v8, v1

    :goto_36
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_3c

    move p0, v2

    goto :goto_3d

    :cond_3c
    move p0, v1

    :goto_3d
    iget-object v9, p1, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_46

    move v9, v2

    goto :goto_47

    :cond_46
    move v9, v1

    :goto_47
    const-string v11, "preferredStartingWindowType "

    invoke-static {v11}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x9

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v12, v10

    const/4 v2, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v13, 0x4

    aput-object v2, v12, v13

    const/4 v2, 0x5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    const/4 v2, 0x6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    const/4 v2, 0x7

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v13, 0x8

    aput-object v2, v12, v13

    const-string v2, "newTask=%b, taskSwitch=%b, processRunning=%b, allowTaskSnapshot=%b, activityCreated=%b, isSolidColorSplashScreen=%b, legacySplashScreen=%b, activityDrawn=%b, topIsHome=%b"

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "PhoneStartingWindowTypeAlgorithm"

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_af

    if-eqz v4, :cond_aa

    if-nez v0, :cond_aa

    if-eqz v3, :cond_af

    if-nez v6, :cond_af

    :cond_aa
    invoke-static {v7, v8}, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;->getSplashscreenType(ZZ)I

    move-result p0

    return p0

    :cond_af
    if-eqz v3, :cond_c8

    if-eqz v5, :cond_bf

    iget-object p1, p1, Landroid/window/StartingWindowInfo;->i:Landroid/window/TaskSnapshot;

    if-eqz p1, :cond_b8

    return v10

    :cond_b8
    if-nez v9, :cond_bf

    invoke-static {v7, v8}, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;->getSplashscreenType(ZZ)I

    move-result p0

    return p0

    :cond_bf
    if-nez p0, :cond_c8

    if-nez v9, :cond_c8

    invoke-static {v7, v8}, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;->getSplashscreenType(ZZ)I

    move-result p0

    return p0

    :cond_c8
    return v1
.end method
