.class public Lcom/oplus/compat/view/inputmethod/InputMethodManagerNative;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputMethodWindowVisibleHeight(Landroid/view/inputmethod/InputMethodManager;)I
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

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result p0

    return p0

    :cond_b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/oplus/inner/view/inputmethod/InputMethodManagerWrapper;->getInputMethodWindowVisibleHeight(Landroid/view/inputmethod/InputMethodManager;)I

    move-result p0

    return p0

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/oplus/compat/view/inputmethod/InputMethodManagerNative;->getInputMethodWindowVisibleHeightQCompat(Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_27
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result p0

    return p0

    :cond_32
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported be N"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getInputMethodWindowVisibleHeightQCompat(Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
