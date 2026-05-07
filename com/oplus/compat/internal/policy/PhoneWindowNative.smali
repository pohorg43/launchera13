.class public Lcom/oplus/compat/internal/policy/PhoneWindowNative;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private mWindowWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/compat/internal/policy/PhoneWindowNative;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    goto :goto_39

    :cond_11
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/oplus/inner/internal/policy/PhoneWindowWrapper;

    invoke-direct {v0, p1}, Lcom/oplus/inner/internal/policy/PhoneWindowWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/compat/internal/policy/PhoneWindowNative;->mWindowWrapper:Ljava/lang/Object;

    goto :goto_39

    :cond_1f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lcom/oplus/compat/internal/policy/PhoneWindowNative;->initWrapperCompat(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compat/internal/policy/PhoneWindowNative;->mWindowWrapper:Ljava/lang/Object;

    goto :goto_39

    :cond_2c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/compat/internal/policy/PhoneWindowNative;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    :goto_39
    return-void

    :cond_3a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getWindowCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initWrapperCompat(Landroid/content/Context;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getWindow()Landroid/view/Window;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/oplus/compat/internal/policy/PhoneWindowNative;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object p0

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/oplus/compat/internal/policy/PhoneWindowNative;->mWindowWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/internal/policy/PhoneWindowWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/internal/policy/PhoneWindowWrapper;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/oplus/compat/internal/policy/PhoneWindowNative;->mWindowWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/internal/policy/PhoneWindowNative;->getWindowCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;

    return-object p0

    :cond_27
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/oplus/compat/internal/policy/PhoneWindowNative;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object p0

    :cond_30
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method
