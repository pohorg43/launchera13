.class public final Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/views/OplusTaskHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllowResizeableInSetting()Z
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$getAllowResizeableInSetting$cp()Z

    move-result p0

    return p0
.end method

.method public final getCanMiniMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$getCanMiniMap$cp()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final getCanSplitMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$getCanSplitMap$cp()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final getCompatibleModeMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$getCompatibleModeMap$cp()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final getHEADER_ALPHA()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/views/OplusTaskHeaderView;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$getHEADER_ALPHA$cp()Landroid/util/FloatProperty;

    move-result-object p0

    return-object p0
.end method

.method public final getMiniWindowName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$getMiniWindowName$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMiniWindowTaskId()I
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$getMiniWindowTaskId$cp()I

    move-result p0

    return p0
.end method

.method public final getParallelVersionMode()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$getParallelVersionMode$cp()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final getToolTipsDisable()Z
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$getToolTipsDisable$cp()Z

    move-result p0

    return p0
.end method

.method public final setAllowResizeableInSetting(Z)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$setAllowResizeableInSetting$cp(Z)V

    return-void
.end method

.method public final setCanMiniMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$setCanMiniMap$cp(Ljava/util/HashMap;)V

    return-void
.end method

.method public final setCanSplitMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$setCanSplitMap$cp(Ljava/util/HashMap;)V

    return-void
.end method

.method public final setCompatibleModeMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$setCompatibleModeMap$cp(Ljava/util/HashMap;)V

    return-void
.end method

.method public final setMiniWindowName(Ljava/lang/String;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$setMiniWindowName$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setMiniWindowTaskId(I)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$setMiniWindowTaskId$cp(I)V

    return-void
.end method

.method public final setParallelVersionMode(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$setParallelVersionMode$cp(Ljava/util/HashMap;)V

    return-void
.end method

.method public final setToolTipsDisable(Z)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->access$setToolTipsDisable$cp(Z)V

    return-void
.end method
