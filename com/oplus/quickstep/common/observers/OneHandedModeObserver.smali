.class public final Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;
.super Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;
.source ""


# instance fields
.field private isOneHandedModeEnabled:Z

.field private final oneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;-><init>()V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-direct {v0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->oneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    return-void
.end method

.method private final onStateChange(Landroid/content/Context;)I
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->oneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->isOneHandedModeEnabled:Z

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    const-string p0, "one_handed_mode_enabled"

    return-object p0
.end method

.method public final getOneHandedSettingsUtil()Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->oneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    return-object p0
.end method

.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/common/AbstractObserver;->Companion:Lcom/oplus/quickstep/common/AbstractObserver$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->toSecureUri()Ljava/util/function/Function;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "toSecureUri().apply(getKey())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public initState(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->onStateChange(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final isIsOneHandedModeEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->isOneHandedModeEnabled:Z

    return p0
.end method

.method public onChange(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/AbstractObserver;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->oneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/AbstractObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/AbstractObserver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->isOneHandedModeEnabled:Z

    return-void
.end method
