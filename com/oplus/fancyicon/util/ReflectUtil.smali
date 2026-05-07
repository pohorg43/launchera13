.class public Lcom/oplus/fancyicon/util/ReflectUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusReflectUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStaticFiledValues(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_27

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_f} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_27

    :catch_10
    move-exception p0

    const-string p1, "getStaticFiledValues error : "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusReflectUtil"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-object v0
.end method

.method private static getValueClass(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_e

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_e
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_15

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_15
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_1c
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_23

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_23
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_2a

    const-class p0, [Ljava/lang/String;

    return-object p0

    :cond_2a
    instance-of v0, p0, [I

    if-eqz v0, :cond_31

    const-class p0, [I

    return-object p0

    :cond_31
    instance-of v0, p0, [J

    if-eqz v0, :cond_38

    const-class p0, [J

    return-object p0

    :cond_38
    instance-of v0, p0, [F

    if-eqz v0, :cond_3f

    const-class p0, [F

    return-object p0

    :cond_3f
    instance-of v0, p0, [D

    if-eqz v0, :cond_46

    const-class p0, [D

    return-object p0

    :cond_46
    instance-of v0, p0, [Z

    if-eqz v0, :cond_4d

    const-class p0, [Z

    return-object p0

    :cond_4d
    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_54

    const-class p0, Landroid/content/Context;

    return-object p0

    :cond_54
    instance-of v0, p0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5b

    const-class p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_5b
    instance-of p0, p0, Landroid/content/pm/PackageManager;

    if-eqz p0, :cond_62

    const-class p0, Landroid/content/pm/PackageManager;

    return-object p0

    :cond_62
    const-class p0, Ljava/lang/String;

    return-object p0
.end method

.method public static varargs processFun(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_2d

    array-length v3, p2

    new-array v4, v3, [Ljava/lang/Class;

    :goto_b
    if-ge v2, v3, :cond_18

    aget-object v5, p2, v2

    invoke-static {v5}, Lcom/oplus/fancyicon/util/ReflectUtil;->getValueClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_3a

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    :goto_18
    if-nez v1, :cond_1c

    move-object p1, v0

    goto :goto_20

    :cond_1c
    :try_start_1c
    invoke-virtual {v1, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_20} :catch_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_3a

    :goto_20
    if-nez p1, :cond_23

    goto :goto_27

    :cond_23
    :try_start_23
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_27
    return-object v0

    :catch_28
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_18

    :cond_2d
    new-array p2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    move-exception p0

    const-string p1, "processFun error : "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusReflectUtil"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs processStaticFun(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4d

    if-nez p0, :cond_a

    goto :goto_4d

    :cond_a
    const/4 v0, 0x0

    if-eqz p2, :cond_29

    :try_start_d
    array-length v2, p2

    new-array v3, v2, [Ljava/lang/Class;

    :goto_10
    if-ge v0, v2, :cond_1d

    aget-object v4, p2, v0

    invoke-static {v4}, Lcom/oplus/fancyicon/util/ReflectUtil;->getValueClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1d
    invoke-virtual {p0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_24

    goto :goto_4d

    :cond_24
    invoke-virtual {p0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4d

    :cond_29
    new-array p2, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_35} :catch_36

    goto :goto_4d

    :catch_36
    move-exception p0

    const-string p1, "processStaticFun e: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusReflectUtil"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-object v1
.end method

.method public static setStaticFiledValues(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_26

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_26

    :catch_f
    move-exception p0

    const-string p1, "setStaticFiledValues error : "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusReflectUtil"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method
