.class public final Le3/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Le3/a;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    const-class v0, Le3/a;

    const-string v1, "java.specification.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x10000

    if-nez v1, :cond_d

    goto :goto_45

    :cond_d
    const/4 v3, 0x6

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v5, v3}, Lp3/k;->t(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    if-gez v3, :cond_1d

    :try_start_17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1b} :catch_45

    mul-int/2addr v1, v2

    goto :goto_48

    :cond_1d
    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x4

    invoke-static {v1, v4, v6, v5, v7}, Lp3/k;->t(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    if-gez v4, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_2a
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_3a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/2addr v3, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_43} :catch_45

    add-int/2addr v1, v3

    goto :goto_48

    :catch_45
    :goto_45
    const v1, 0x10006

    :goto_48
    const v3, 0x10008

    const-string v4, ", base type classloader: "

    const-string v5, "Instance class was loaded from a different classloader: "

    const-string v6, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    const-string v7, "forName(\"kotlin.internal…entations\").newInstance()"

    if-ge v1, v3, :cond_57

    if-ge v1, v2, :cond_e3

    :cond_57
    :try_start_57
    const-class v3, Lg3/a;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_60} :catch_9b

    if-eqz v3, :cond_66

    :try_start_62
    check-cast v3, Le3/a;

    goto/16 :goto_17c

    :cond_66
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_6c
    .catch Ljava/lang/ClassCastException; {:try_start_62 .. :try_end_6c} :catch_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_62 .. :try_end_6c} :catch_9b

    :catch_6c
    move-exception v8

    :try_start_6d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9a

    new-instance v10, Ljava/lang/ClassNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_9a
    throw v8
    :try_end_9b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6d .. :try_end_9b} :catch_9b

    :catch_9b
    :try_start_9b
    const-string v3, "kotlin.internal.JRE8PlatformImplementations"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9b .. :try_end_a8} :catch_e3

    if-eqz v3, :cond_ae

    :try_start_aa
    check-cast v3, Le3/a;

    goto/16 :goto_17c

    :cond_ae
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_b4
    .catch Ljava/lang/ClassCastException; {:try_start_aa .. :try_end_b4} :catch_b4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_aa .. :try_end_b4} :catch_e3

    :catch_b4
    move-exception v8

    :try_start_b5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e2

    new-instance v10, Ljava/lang/ClassNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_e2
    throw v8
    :try_end_e3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b5 .. :try_end_e3} :catch_e3

    :catch_e3
    :cond_e3
    const v3, 0x10007

    if-ge v1, v3, :cond_ea

    if-ge v1, v2, :cond_177

    :cond_ea
    :try_start_ea
    const-class v1, Lf3/a;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ea .. :try_end_f3} :catch_12f

    if-eqz v1, :cond_fa

    :try_start_f5
    move-object v3, v1

    check-cast v3, Le3/a;

    goto/16 :goto_17c

    :cond_fa
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_100
    .catch Ljava/lang/ClassCastException; {:try_start_f5 .. :try_end_100} :catch_100
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f5 .. :try_end_100} :catch_12f

    :catch_100
    move-exception v2

    :try_start_101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12e

    new-instance v8, Ljava/lang/ClassNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_12e
    throw v2
    :try_end_12f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_101 .. :try_end_12f} :catch_12f

    :catch_12f
    :try_start_12f
    const-string v1, "kotlin.internal.JRE7PlatformImplementations"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_13c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12f .. :try_end_13c} :catch_177

    if-eqz v1, :cond_142

    :try_start_13e
    move-object v3, v1

    check-cast v3, Le3/a;

    goto :goto_17c

    :cond_142
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_148
    .catch Ljava/lang/ClassCastException; {:try_start_13e .. :try_end_148} :catch_148
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13e .. :try_end_148} :catch_177

    :catch_148
    move-exception v2

    :try_start_149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_176

    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_176
    throw v2
    :try_end_177
    .catch Ljava/lang/ClassNotFoundException; {:try_start_149 .. :try_end_177} :catch_177

    :catch_177
    :cond_177
    new-instance v3, Le3/a;

    invoke-direct {v3}, Le3/a;-><init>()V

    :goto_17c
    sput-object v3, Le3/b;->a:Le3/a;

    return-void
.end method
